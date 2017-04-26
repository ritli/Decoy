﻿using UnityEngine;
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

    public Color m_activeColor = Color.red;
    public Color m_idleColor = Color.white;
    public float m_intensity = 1;

    bool m_shotAudioPlayed = false;
    bool m_switchTargetPlayed = false;
    bool m_alertSoundPlayed = false;


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
        m_FoVLight.spotAngle = fieldOfView + lightAngleOffset;

        m_audio.PlayEvent(2, false);
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
                m_FoVLight.color = Color.Lerp(m_activeColor, m_idleColor, m_wideTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_FoVLight.spotAngle, fieldOfView, m_wideTime);
                m_narrowTime = 0;

                m_wideTime += Time.deltaTime * m_zoomSpeed;

                CheckPlaySweepSound();

                if (m_LookAt.isMovingAim())
                { 
                    m_LookAt.lookAtWaypoint();
                }

                m_alertSoundPlayed = false;
                break;
            case TurretState.isTargeting:
                if (!m_alertSoundPlayed)
                {
                    m_alertSoundPlayed = true;
                    m_audio.PlayEvent(3, true);
                }

                m_FoVLight.color = Color.Lerp(m_idleColor, m_activeColor, m_narrowTime);
                m_FoVLight.spotAngle = Mathf.Lerp(m_FoVLight.spotAngle, m_narrowAngle, m_narrowTime);
                m_wideTime = 0f;
                m_narrowTime += Time.deltaTime * m_zoomSpeed;

                //Reset timer
                m_timeToKillElapsed = 0;
                m_shotAudioPlayed = false;

                //Continue to aim at target
                aimAtTarget();

                break;
            case TurretState.isFiring:

                aimAtTarget();

                //Run timer until player is killed.
                if (m_timeToKillElapsed > m_timeToKill) 
                {
                    if (!m_shotAudioPlayed)
                    {
                        m_shotAudioPlayed = true;
                        m_audio.PlayEventTimed(0, 2, 0.4f, true);
                        m_Target.Kill();
                        m_fireParticles.Emit(20);
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
        m_LookAt.lookAtPosition(m_TargetPosition);
    }
    
    void CheckPlaySweepSound()
    {
        Vector3 playerpos = GameManager.GetPlayer().transform.position;
        Vector3 distance = playerpos - transform.position;
        Vector3 forward = transform.forward * viewDistance;
        Vector3 check = Vector3.Project(distance, forward);

        Debug.DrawRay(transform.position, check);

        check += transform.position - check.normalized * 0.7f;

        Debug.DrawRay(check, Vector3.down * 10);

        if (Physics.Raycast(new Ray(check, Vector3.down * 10), 10f, m_playerMask))
        {
            PlayRotateSound();
            print("soundplayed");
        }

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
