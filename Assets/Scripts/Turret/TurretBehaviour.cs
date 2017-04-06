using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour
{
    
    public enum TurretState { isIdle, isTargeting, isFiring };
    
    public TurretState turretState;// = TurretState.isIdle;
    [HideInInspector]
    public float fieldOfView = 10;
    [HideInInspector]
    public float viewDistance = 10;

    public float m_timeToKill = 3;
    float m_timeToKillElapsed = 0;

    IKillable m_Target;

    Raycast m_Raycast;
    LookAt m_LookAt;
    TurretFirepower m_TurretFirepower;
    public float lightAngleOffset;

    Light foVLight;
    /*Change to object Managers reference of player*/
    GameObject m_Player;

    Decoy m_Decoy;

    RaycastHit hit;
    Vector3 m_lookAtTarget;

    // Use this for initialization
    void Start()
    {
        foVLight = GetComponentInChildren<Light>();
        m_LookAt = GetComponent<LookAt>();
        m_Raycast = GetComponent<Raycast>();
        m_Player = GameObject.FindGameObjectWithTag(Tags.player);
        turretState = TurretState.isIdle;
    }

    void OnEnable()
    {
        PlayerController.OnCreateDecoy += SetDecoy;
    }
    void OnDisable()
    {
        PlayerController.OnCreateDecoy -= SetDecoy;
    }

    void SetDecoy()
    {
        //set the decoy
        m_Decoy = GameManager.GetDecoy();
    }

    // Update is called once per frame
    void Update()
    {
        m_Raycast.maxDistance = viewDistance;
        foVLight.spotAngle = fieldOfView + lightAngleOffset;
        foVLight.range = viewDistance * 0.7f;
        turretState = decideState();

        switch (turretState)
        {
            case TurretState.isIdle:

                if (m_LookAt.isMovingAim())
                { 
                    m_LookAt.lookAtWaypoint();
                }
                break;
            case TurretState.isTargeting:

                m_timeToKillElapsed = 0;
                
                aimAtTarget();

                break;
            case TurretState.isFiring:
                
                aimAtTarget();

                if (m_timeToKillElapsed > m_timeToKill) 
                {
                    m_Target.Kill();
                }

                m_timeToKillElapsed += Time.deltaTime;
                break;
        }
    }
    void aimAtTarget()
    {
        m_LookAt.lookAtPosition(m_lookAtTarget);
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
            if (m_Raycast.doRaycast(out hit, direction) && hit.transform.gameObject.tag == tag)
                return true;

        }
        return false;
    }

    TurretState decideState()
    {
        //Is decoy visible to the turret? 
        if (m_Decoy != null)
        {
             if(isObjectVisible(m_Decoy.gameObject.transform, Tags.decoy))
             {
                m_lookAtTarget = m_Decoy.transform.position;
                m_Target = m_Decoy;

                if (m_Raycast.doRaycast(out hit, transform.forward))
                 {
                     if (hit.transform.gameObject.tag == Tags.decoy)
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
            m_lookAtTarget = GameManager.GetPlayer().transform.position;
            m_Target = GameManager.GetPlayer();

            //check if player can be fired at. if yes, initiate fire. Else, target player
            if (m_Raycast.doRaycast(out hit, transform.forward))
            {
                if (hit.transform.gameObject.tag == Tags.player)
                {
                    return TurretState.isFiring;
                }
            }
            return TurretState.isTargeting;
        }
        return TurretState.isIdle;
    }
}
