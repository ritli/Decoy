using UnityEngine;
using System.Collections;

public class LookAt : MonoBehaviour 
{
    public delegate void targetSwitched();
    public targetSwitched onTargetSwitched;

    Transform[] waypoints;
    bool m_MovingAim;
    public float speed;
    Vector3 targetPosition;
    Vector3 directionToTarget;
    Quaternion targetRotation;

    Transform m_waypointParent;
    private bool m_IsPaused = false;
    int waypointIndex = 0;
    float timeSinceChange = 0;
    public float inspectTime;
    public bool lookRandom = false;

	// Use this for initialization
	void Start () 
    {
        GetWaypoints();

        lookAtWaypoint();
	}

	
    void SwitchTarget()
    {
        if (onTargetSwitched != null)
        {
            onTargetSwitched();
        }
    }

    private void OnEnable()
    {
        PauseManager.OnPause += pauseLookAt;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pauseLookAt;
    }

    //Dynamically allocates waypoints based on the amount of children the gameobject waypoint has
    void GetWaypoints()
    {
        if (m_waypointParent = transform.parent.transform.FindChild("Waypoints"))
        {
            waypoints = new Transform[m_waypointParent.childCount];

            for (int i = 0; i < waypoints.Length; i++)
            {
                waypoints[i] = m_waypointParent.GetChild(i);
            }
        }

        else
        {
            Debug.LogError("ERROR: Turret must have gameobject named 'Waypoints' as a child.");
        }
    }

	// Update is called once per frame
	void Update ()
    {
        if (!m_IsPaused)
        {
            //change index?
            if (lookRandom)
                setRandowmWaypointIndex();
            else
                updateWaypointIndex();

            //when the turret is not moving, allow a new position to look at.
            if (!m_MovingAim)
                lookAtWaypoint();

            //Update the aim
            if (m_MovingAim)
            {
                transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, speed * Time.deltaTime * 15);

                //When rotation has reached the target rotation, stop rotating
                if (Mathf.Abs(Quaternion.Angle(transform.rotation, targetRotation)) < 2)
                {
                    m_MovingAim = false;
                }
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
                SwitchTarget();
                waypointIndex = 0;
                return;
            }

            SwitchTarget();
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
    void pauseLookAt(bool isPaused)
    {
        m_IsPaused = isPaused;
    }
}
