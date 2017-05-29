using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour
{

    AudioPlayer m_audio;
    public LayerMask m_playerMask;
    public enum TurretState { isIdle, isTargeting, isFiring, isPaused };   
    public TurretState turretState;// = TurretState.isIdle;
    private TurretState m_StateBeforePause;
    //[HideInInspector]
    public float fieldOfView = 10;
    public float narrowFieldOfView = 5;
    public float fovAdjustSpeed = 1f;
    float currentFieldOfView;
    //[HideInInspector]
    public float viewDistance = 10;
    public float lightAngleOffset;
    float m_currentAngle;
    public float m_narrowAngle = 5f;
    public float m_zoomSpeed = 1f;

    public float m_timeToKill = 3;
    float m_timeToKillElapsed = 0;

    ParticleSystem m_fireParticles;
    ParticleSystem m_muzzleflare1;
    ParticleSystem m_muzzleflare2;

    IKillable m_Target;

    Raycast m_Raycast;
    LookAt m_LookAt;
    Light m_FoVLight;
    Decoy m_Decoy;
    FMODUnity.StudioEventEmitter m_emitter;

    RaycastHit m_Hit;
    Transform m_TargetPosition;

    public Color m_activeColor = Color.red;
    public Color m_idleColor = Color.white;
    public float m_intensity = 1;

    bool m_shotAudioPlayed = false;
    bool m_switchTargetPlayed = false;
    bool m_alertSoundPlayed = false;
    float m_timeSinceAlertSound;
    bool m_locked = false;
    bool m_playerLocked = false;
    bool m_playerDecoyed = false;

    // Use this for initialization
    void Start()
    {
        m_audio = GetComponent<AudioPlayer>();
        m_currentAngle = fieldOfView;
        m_FoVLight = GetComponentInChildren<Light>();
        m_LookAt = GetComponent<LookAt>();
        m_Raycast = GetComponent<Raycast>();
        turretState = TurretState.isIdle;
        m_fireParticles = GetComponentInChildren<ParticleSystem>();
        m_muzzleflare1 = transform.FindChild("TurretMuzzle").FindChild("MuzzleFlare").GetComponent<ParticleSystem>();
        m_muzzleflare2 = transform.FindChild("TurretMuzzle").FindChild("MuzzleFlare2").GetComponent<ParticleSystem>();
        m_FoVLight.spotAngle = fieldOfView + lightAngleOffset;

        m_emitter = transform.FindChild("Detect").GetComponent<FMODUnity.StudioEventEmitter>();

        m_audio.PlayEvent(2, false);

        currentFieldOfView = fieldOfView;
    }

    void OnEnable()
    {
        m_LookAt = GetComponent<LookAt>();
        m_LookAt.onTargetSwitched += ResetRotate;
        PlayerController.OnCreateDecoy += SetDecoy;
        PauseManager.OnPause += pauseTurret;
    }
    void OnDisable()
    {
        m_LookAt.onTargetSwitched -= ResetRotate;
        PlayerController.OnCreateDecoy -= SetDecoy;
        PauseManager.OnPause -= pauseTurret;
    }

    void ResetRotate()
    {
        m_switchTargetPlayed = false;
    }

    void PlayRotateSound()
    {
        if (!m_switchTargetPlayed)
        {
            m_switchTargetPlayed = true;
            m_audio.PlaySoundAtPosition(1, true, GameManager.GetPlayer().transform.position + Vector3.up);
        }

    }

    void SetDecoy()
    {
        //set the decoy
        m_Decoy = GameManager.GetDecoy();
        m_playerDecoyed = true;

        if (isObjectVisible(GameManager.GetPlayer().transform, Tags.player))
        {
            m_playerLocked = false;
            m_Target = m_Decoy;
            m_TargetPosition = m_Decoy.transform;
        }
        //m_Target = null;
    }

    // Update is called once per frame
    void Update()
    {
        //Update values if changed in editor
        m_Raycast.maxDistance = viewDistance;
        m_FoVLight.intensity = m_intensity;
        m_FoVLight.range = viewDistance * 1.5f;
        if(turretState != TurretState.isPaused)
            turretState = decideState();

        switch (turretState)
        {
            case TurretState.isIdle:
                m_FoVLight.color = Color.Lerp(m_FoVLight.color, m_idleColor, m_zoomSpeed * Time.deltaTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_FoVLight.spotAngle, fieldOfView, m_zoomSpeed * Time.deltaTime);

                currentFieldOfView = Mathf.Lerp(currentFieldOfView, fieldOfView, fovAdjustSpeed * Time.deltaTime);

                CheckPlaySweepSound();

                if (m_LookAt.isMovingAim())
                { 
                    m_LookAt.lookAtWaypoint();
                }

                if (m_timeSinceAlertSound < 0.5f && !m_playerDecoyed)
                {
                    print("Decoystate : " + m_playerDecoyed);
                    print("Cancelled");
                    m_emitter.SetParameter("BuildCancel", 1);
                }
                else if (!m_playerDecoyed)
                {
                    print("Stopped");
                    m_emitter.Stop();
                    m_alertSoundPlayed = false;
                    m_emitter.SetParameter("BuildCancel", 0);
                }
                else if (m_playerDecoyed && m_timeSinceAlertSound > 0.5f)
                {
                    print("Decoyed false");
                    m_playerDecoyed = false;
                }

                m_timeSinceAlertSound += Time.deltaTime;

                break;
            case TurretState.isTargeting:
                if (!m_alertSoundPlayed)
                {
                    m_timeSinceAlertSound = 0;

                    m_alertSoundPlayed = true;
                    m_emitter.Play();
                }

                m_FoVLight.color = Color.Lerp(m_FoVLight.color, m_activeColor, m_zoomSpeed * Time.deltaTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_FoVLight.spotAngle, m_narrowAngle, m_zoomSpeed * Time.deltaTime);
                m_Target.ShowOverlay();
                currentFieldOfView = Mathf.Lerp(currentFieldOfView, narrowFieldOfView, fovAdjustSpeed * Time.deltaTime);


                //Reset timer
                m_timeToKillElapsed = 0;
                m_shotAudioPlayed = false;

                //Continue to aim at target
                aimAtTarget();

                break;
            case TurretState.isFiring:

                aimAtTarget();
                m_Target.ShowOverlay();
                m_FoVLight.color = Color.Lerp(m_FoVLight.color, m_activeColor, m_zoomSpeed * Time.deltaTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_FoVLight.spotAngle, m_narrowAngle, m_zoomSpeed * Time.deltaTime);

                currentFieldOfView = Mathf.Lerp(currentFieldOfView, narrowFieldOfView, fovAdjustSpeed * Time.deltaTime);

                //Run timer until player is killed.
                if (m_timeToKillElapsed > m_timeToKill) 
                {
                    if (!m_shotAudioPlayed)
                    {
                        print("Target Killed");
                        m_shotAudioPlayed = true;
                        m_audio.PlayEvent(0, true);
                        m_Target.Kill();

                        m_alertSoundPlayed = false;

                        StartCoroutine(ShootSequence());
                    }
                }

                //count up timer
                m_timeToKillElapsed += Time.deltaTime;
                break;
            case TurretState.isPaused:
                break;
        }
    }
    void aimAtTarget()
    {   
        if(m_TargetPosition != null)
            m_LookAt.lookAtPosition(m_TargetPosition.position);
    }
    
    IEnumerator ShootSequence()
    {
        m_fireParticles.Emit(40);

        m_muzzleflare1.Emit(15);
        m_muzzleflare2.Emit(15);

        for (int i = 0; i < 3; i++)
        {
            yield return new WaitForSeconds(0.05f);

            m_muzzleflare1.Emit(15);
            m_muzzleflare2.Emit(15);
        }
    }

    void CheckPlaySweepSound()
    {
        Vector3 playerpos = GameManager.GetPlayer().transform.position;
        Vector3 distance = playerpos - transform.position;
        Vector3 forward = transform.forward * viewDistance;
        Vector3 check = Vector3.Project(distance, forward);

        check += transform.position - check.normalized * 0.7f;

        if (Physics.Raycast(new Ray(check, Vector3.down * 10), 10f, m_playerMask))
        {
            PlayRotateSound();
        }

    }

    bool isObjectVisible(Transform objectTransform, string tag)
    {
        if (objectTransform.CompareTag(Tags.player))
        {
            objectTransform = objectTransform.GetComponentInChildren<Camera>().transform;
        }

        //Calculate direction to the player
        Vector3 direction = (objectTransform.transform.position) - transform.position;
        direction.Normalize();

        //decide if player is inside FoV
        if (Mathf.Abs(Vector3.Angle(transform.forward, direction)) < currentFieldOfView / 2)
        {
            //decide if view is obstructed with raycast
            if (m_Raycast.doRaycast(out m_Hit, direction) && m_Hit.transform.gameObject.tag == tag)
                return true;

        }
        return false;
    }

    TurretState decideState()
    {

        //if a decoy is present then determine if we can aim at it. 
        if (m_Decoy != null && !m_playerLocked)
        {
             if(isObjectVisible(m_Decoy.gameObject.transform, Tags.decoy))
             {
                if (!m_locked)
                {
                    m_TargetPosition = m_Decoy.transform;
                    m_Target = m_Decoy;
                    m_locked = true;
                }
                
                
                //is decoy infron of turret then fire
                if (m_Raycast.doRaycast(out m_Hit, transform.forward))
                 {
                     if (m_Hit.transform.gameObject.tag == Tags.decoy)
                     {
                        return TurretState.isFiring;
                     }
                 }

                return TurretState.isTargeting;
            }
        }
        
       //is player visible to the turret? if not the return to idle.
        if(isObjectVisible(GameManager.GetPlayer().gameObject.transform, Tags.player))
        {
            if (!m_locked)
            {
                m_TargetPosition = GameManager.GetPlayer().GetComponentInChildren<Camera>().transform;
                m_Target = GameManager.GetPlayer();
                m_locked = true;
                m_playerLocked = true;
            }

            //check if player can be fired at. if yes, initiate fire. Else, target player
            if (m_Raycast.doRaycast(out m_Hit, transform.forward))
            {
                if (m_Hit.transform.gameObject.tag == Tags.player)
                {
                    return TurretState.isFiring;
                }
            }
            return TurretState.isTargeting;
        }
        m_playerLocked = false;
        m_locked = false;
        return TurretState.isIdle;
    }

    void pauseTurret(bool isPaused)
    {
        if(turretState == TurretState.isPaused && !isPaused)
        {
            turretState = m_StateBeforePause;
            m_fireParticles.Play();
        }
        else if(turretState != TurretState.isPaused && isPaused)
        {
            m_fireParticles.Pause(true);

            m_StateBeforePause = turretState;
            turretState = TurretState.isPaused;
        }
    }

}
