using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour
{
    
    public enum TurretState { isIdle, isTargeting, isFiring, isPaused };
    
    public TurretState turretState;// = TurretState.isIdle;
    private TurretState m_StateBeforePause;
    //[HideInInspector]
    public float fieldOfView = 10;
    //[HideInInspector]
    public float viewDistance = 10;
    public float lightAngleOffset;
    float m_currentAngle;
    public float m_narrowAngle = 5f;
    public float m_zoomSpeed = 1f;
    float m_narrowTime = 0f;
    float m_wideTime = 0f;

    public float m_timeToKill = 3;
    float m_timeToKillElapsed = 0;

    ParticleSystem m_fireParticles;

    IKillable m_Target;

    Raycast m_Raycast;
    LookAt m_LookAt;
    Light m_FoVLight;
    Decoy m_Decoy;

    RaycastHit m_Hit;
    Vector3 m_TargetPosition;

    Color m_activeColor = Color.red;
    Color m_idleColor = Color.white;

    // Use this for initialization
    void Start()
    {
        m_currentAngle = fieldOfView;
        m_FoVLight = GetComponentInChildren<Light>();
        m_LookAt = GetComponent<LookAt>();
        m_Raycast = GetComponent<Raycast>();
        turretState = TurretState.isIdle;
        m_fireParticles = GetComponentInChildren<ParticleSystem>();
        m_FoVLight.spotAngle = fieldOfView + lightAngleOffset;

    }

    void OnEnable()
    {
        PlayerController.OnCreateDecoy += SetDecoy;
        PauseManager.OnPause += pauseTurret;
    }
    void OnDisable()
    {
        PlayerController.OnCreateDecoy -= SetDecoy;
        PauseManager.OnPause -= pauseTurret;
    }

    void SetDecoy()
    {
        //set the decoy
        m_Decoy = GameManager.GetDecoy();
    }

    // Update is called once per frame
    void Update()
    {
        //Update values if changed in editor
        m_Raycast.maxDistance = viewDistance;
        
        m_FoVLight.range = viewDistance * 1.5f;
        if(turretState != TurretState.isPaused)
            turretState = decideState();

        switch (turretState)
        {
            case TurretState.isIdle:

                m_FoVLight.color = Color.Lerp(m_activeColor, m_idleColor, m_wideTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_narrowAngle, fieldOfView, m_wideTime);
                m_narrowTime = 0;

                m_wideTime += Time.deltaTime * m_zoomSpeed;

                if (m_LookAt.isMovingAim())
                { 
                    m_LookAt.lookAtWaypoint();
                }
                break;
            case TurretState.isTargeting:
                m_FoVLight.color = Color.Lerp(m_idleColor, m_activeColor, m_narrowTime);
                print(m_FoVLight.color);
                m_FoVLight.spotAngle = Mathf.Lerp(fieldOfView, m_narrowAngle, m_narrowTime);
                m_wideTime = 0f;
                print(Mathf.Lerp(fieldOfView, m_narrowAngle, m_narrowTime));
                m_narrowTime += Time.deltaTime * m_zoomSpeed;

                //Reset timer
                m_timeToKillElapsed = 0;
                
                //Continue to aim at target
                aimAtTarget();

                break;
            case TurretState.isFiring:

                aimAtTarget();

                //Run timer until player is killed.
                if (m_timeToKillElapsed > m_timeToKill) 
                {
                    m_Target.Kill();
                    m_fireParticles.Emit(20);
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
        m_LookAt.lookAtPosition(m_TargetPosition);
    }
    
    bool isObjectVisible(Transform objectTransform, string tag)
    {

        //Calculate direction to the player
        Vector3 direction = objectTransform.transform.position - transform.position;
        direction.Normalize();

        //decide if player is inside FoV
        if (Mathf.Abs(Vector3.Angle(transform.forward, direction)) < fieldOfView / 2)
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
        if (m_Decoy != null)
        {
            //
             if(isObjectVisible(m_Decoy.gameObject.transform, Tags.decoy))
             {

                m_TargetPosition = m_Decoy.transform.position;
                m_Target = m_Decoy;

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
            m_TargetPosition = GameManager.GetPlayer().transform.position;
            m_Target = GameManager.GetPlayer();

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
