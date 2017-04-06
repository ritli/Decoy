using UnityEngine;
using System.Collections;

public class LookAt : MonoBehaviour 
{
    public Transform[] waypoints;
    bool m_MovingAim;
    public float speed;
    Vector3 targetPosition;
    Vector3 directionToTarget;
    Quaternion targetRotation;

    int waypointIndex = 0;
    float timeSinceChange = 0;
    public float inspectTime;
    public bool lookRandom = false;

	// Use this for initialization
	void Start () 
    {
        lookAtWaypoint();
        //m_MovingAim = false;
	}
	
	// Update is called once per frame
	void Update ()
    {
        //change index?
        if(lookRandom)
            setRandowmWaypointIndex();
        else 
            updateWaypointIndex();
        
        //when the turret is not moving, allow a new position to look at.
        if (!m_MovingAim)
            lookAtWaypoint();

        //Update the aim
        if (m_MovingAim)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, speed);

            //When rotation has reached the target rotation, stop rotating
            if(Mathf.Abs(Quaternion.Angle(transform.rotation, targetRotation)) < 2)
            {
                m_MovingAim = false;
            }
        }

	}
    //increase index in sequence
    void updateWaypointIndex()
    {
        timeSinceChange += Time.deltaTime;
        if (timeSinceChange >= inspectTime && !m_MovingAim)
        {
            timeSinceChange = 0;
            if(waypoints.Length-1 <= waypointIndex)
            {
                waypointIndex = 0;
                return;
            }
            waypointIndex++;
        }
    }
    //Set index to random
    void setRandowmWaypointIndex()
    {
        timeSinceChange += Time.deltaTime;
        if (timeSinceChange >= inspectTime && !m_MovingAim)
        {
            timeSinceChange = 0;
            waypointIndex = Random.Range(0, waypoints.Length);
        }
    }
    //Calculates a rotation to look at, initiates movement
    public void lookAtPosition(Vector3 newPosition)
    {
        m_MovingAim = true;
        targetPosition = newPosition;
        //get direction between this object and target
        directionToTarget = targetPosition - transform.position;
        directionToTarget.Normalize();
        //get the target rotation
        targetRotation = Quaternion.LookRotation(directionToTarget, Vector3.up);

    }

    public void lookAtWaypoint()
    {
        if(lookRandom)
        {
            setRandowmWaypointIndex();
        }
        lookAtPosition(waypoints[waypointIndex].position);
    }
    public bool isMovingAim()
    {
        return m_MovingAim;
    }
}
