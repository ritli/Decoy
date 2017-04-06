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

    Raycast m_Raycast;
    LookAt m_LookAt;
    TurretFirepower m_TurretFirepower;
    public float lightAngleOffset;

    Light foVLight;
    /*Change to object Managers reference of player*/
    GameObject m_Player;


    RaycastHit hit;
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
        GameManager.GetDecoy();
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
                if(m_LookAt.isMovingAim())
                m_LookAt.lookAtWaypoint();
                break;
            case TurretState.isTargeting:

                    m_LookAt.lookAtPosition(m_Player.transform.position);

                break;
            case TurretState.isFiring:

                    m_LookAt.lookAtPosition(m_Player.transform.position);
                break;
        }
    }

    bool isPlayerVisible()
    {
        
        //Calculate direction to the player
        Vector3 direction = m_Player.transform.position - transform.position;
        direction.Normalize();

        //decide if player is inside FoV
        if (Mathf.Abs(Vector3.Angle(transform.forward, direction)) < fieldOfView / 2)
        {

            //decide if view is obstructed with raycast
            if (m_Raycast.doRaycast(out hit, direction) && hit.transform.gameObject.tag == Tags.player)
                return true;

        }
        return false;
    }
    TurretState decideState()
    {
        //Is player visible to the turret? if no the state is idle.
        if(isPlayerVisible())
        {
            //check if player can be fired at. if yes, initiate fire. Else, target player

            if(m_Raycast.doRaycast(out hit, transform.forward))
            {
                if( hit.transform.gameObject.tag == Tags.player)
                return TurretState.isFiring;
            }
            return TurretState.isTargeting;
        }
        return TurretState.isIdle;
    }
}
