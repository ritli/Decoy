using UnityEngine;
using System.Collections;

public class LookAt : MonoBehaviour 
{
    public Transform[] waypoints;
    bool m_MovingAim;
    public float speed;
    Vector3 target;
    Vector3 direction;
    Quaternion targetRotation;

    int waypointIndex = 0;
    float timeSinceChange = 0;
    public float inspectTime;

	// Use this for initialization
	void Start () 
    {
        lookAtWaypoint();
        //m_MovingAim = false;
	}
	
	// Update is called once per frame
	void Update ()
    {
        updateWaypointIndex();
        if (!m_MovingAim)
            lookAtWaypoint();

        if (m_MovingAim)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, speed);

            if(Mathf.Abs(Quaternion.Angle(transform.rotation, targetRotation)) < 2)
            {
                m_MovingAim = false;
            }
        }

	}
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
    public void lookAtPosition(Vector3 newPosition)
    {
        m_MovingAim = true;
        target = newPosition;
        //get direction between this object and target
        direction = target - transform.position;
        direction.Normalize();
        //get the target rotation
        targetRotation = Quaternion.LookRotation(direction, Vector3.up);

    }
    public void lookAtWaypoint()
    {
        lookAtPosition(waypoints[waypointIndex].position);
    }
    public bool isMovingAim()
    {
        return m_MovingAim;
    }
}
