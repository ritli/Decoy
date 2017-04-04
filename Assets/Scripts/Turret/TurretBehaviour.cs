using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour
{

    enum TurretState { isIdle, isTargeting, isFiring };
    TurretState m_TurretState = TurretState.isIdle;
    [HideInInspector]
    public float fieldOfView = 10;
    [HideInInspector]
    public float viewDistance = 10;

    Raycast m_Raycast;
    LookAt m_LookAt;
    TurretFirepower m_TurretFirepower;
    FOVDrawer m_FOVDrawer;


    /*Change to object Managers reference of player*/
    GameObject m_Player;

    // Use this for initialization
    void Start()
    {
        m_FOVDrawer = GetComponent<FOVDrawer>();
        m_Raycast = GetComponent<Raycast>();
        m_Player = GameObject.FindGameObjectWithTag(Tags.player);
    }

    // Update is called once per frame
    void Update()
    {
        m_TurretState = decideState();

        switch (m_TurretState)
        {
            case TurretState.isIdle:

                break;
            case TurretState.isTargeting:

                break;
            case TurretState.isFiring:

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
            RaycastHit hit;
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
            RaycastHit hit;
            if(m_Raycast.doRaycast(out hit, transform.forward) && hit.transform.gameObject.tag == Tags.player)
            {
                return TurretState.isFiring;
            }
            return TurretState.isTargeting;
        }
        return TurretState.isIdle;
    }
}
