using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private Vector3 m_wallNormal;
    private Ray m_rayDown;
	private Ray m_rayDown2;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);
	private Raycast m_raycaster;
    private float positionOffset = 0.5f;

    // Variables for nearby ledge detection
    private bool m_inTrigger = false;
    private Collider m_collider;
    private bool m_canGrab = false;

	private Vector3 m_wallPoint = new Vector3(0, 0, 0);

	[Tooltip("The distance you need to be from a ledge to be able to climb it")]
    public float ledgeSensitivity;

    [Tooltip("Determines the angle you need to grab the ledge while looking at the wall")]
    public float directionSensitivity = 0f;


    // Use this for initialization
    void Start () {
		m_raycaster = GetComponent<Raycast> ();
	}


    /*
     * Update is used for finding ledge on a wall near the player
     */
    void Update()
    {
		if (m_inTrigger && m_collider != null)
        {
            Vector3 direction = new Vector3(0, 0, 0);
            direction = m_collider.ClosestPointOnBounds(transform.position);
            direction = transform.position - direction;
            Vector3 cameraDirection = Camera.main.transform.forward;

            Debug.DrawRay(transform.position, direction * 20, Color.yellow);

            RaycastHit hit = new RaycastHit();

            bool angleOk = Vector3.Angle(cameraDirection, direction) > 180 - directionSensitivity ? true : false;
            bool isWall = Vector3.Angle(direction, Vector3.up) > 45 ? true : false;
            bool raySuccess = m_raycaster.doRaycast(out hit, -direction, transform.position);
            bool foundLedge = findLedge(hit);

//          print("angleOk: " + angleOk);

            if (angleOk && foundLedge)
            {
                m_canGrab = true;
                m_newPosition = getNewPosition();
            }
            else
            {
                m_canGrab = false;
            }

            //m_collider.GetComponent<MeshRenderer> ().enabled = !m_canGrab;
//          print("ledgeDetection: " + m_canGrab);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag != Tags.noGrab)
        {
			m_collider = other;
            m_inTrigger = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        m_canGrab = false;
        m_inTrigger = false;
        //other.GetComponent<MeshRenderer> ().enabled = !m_canGrab;
    }
    public bool canGrab()
    {
        return m_canGrab;
    }


    /* 
     * Finds a ledge given a raycastHit from the wall
     * Used by both teleport and regular grab
     */
    public bool findLedge(RaycastHit wallHit)
    {

		m_wallPoint = wallHit.point + wallHit.normal;

        // Creates new direction and position based on wall hit
        Vector3 direction = new Vector3(wallHit.normal.x, wallHit.normal.y, wallHit.normal.z) * -1;
//		Debug.DrawRay(wallHit.point, direction * 4, Color.blue);

		// Creates a right vector based on wallNormal and up
		Vector3 hitRight = Vector3.Cross(Vector3.up, wallHit.normal);

		// Rotates around the right vector to face toward the floor
        direction = Quaternion.AngleAxis(-90f, hitRight) * direction.normalized;
		
//		Debug.DrawRay(wallHit.point, hitRight * 4, Color.magenta);
//		Debug.DrawRay(wallHit.point, direction * 4, Color.grey);
	

		// Creates a point above and a little bit inside the wall to look for floor

		Vector3 localUp = Vector3.Cross (wallHit.normal, hitRight);

		Vector3 newPosition = wallHit.point + localUp * ledgeSensitivity - wallHit.normal * positionOffset;

        // A ray above target position and facing towards the wall's floor
		m_rayDown.origin = newPosition;
        m_rayDown.direction = direction;

		// Another ray used to determine if other ray is inside terrain
		m_rayDown2.origin = newPosition + localUp * 2;
		m_rayDown2.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
//		Debug.DrawRay(wallHit.point, wallHit.normal * 4, Color.green);
//		Debug.DrawRay(wallHit.point, wallHit.normal * -4, Color.red);

		// Ray moved up and looking down based on wallNormal
//		Debug.DrawRay(m_rayDown.origin, m_rayDown.direction * 4, Color.yellow);
		//Debug.DrawRay(m_rayDown2.origin, m_rayDown2.direction * 4, Color.cyan);

		Vector3 rayDownNormal;

		// If ray hit the floor
		if (m_raycaster.doRaycast(out hit, m_rayDown.direction, m_rayDown.origin))
		{
			if (Vector3.Angle(hit.normal, Vector3.up) <= 45)
			{

				// Ray from the floor above ledge
				Debug.DrawRay(hit.point, hit.normal * 5, Color.white);

				// If the floor is above where the aim is
				if (hit.point.y >= wallHit.point.y)
				{
					// Store the found normal to compare with the other ray
					rayDownNormal = hit.normal;

					// Set the new position
					m_newPosition = hit.point;

					// Raycast again to check if the first was inside an object
					if (m_raycaster.doRaycast(out hit, m_rayDown2.direction, m_rayDown2.origin)) 
					{
						
//						Debug.DrawRay(hit.point, hit.normal * 5, Color.red);

						// If the angle between the two rays is different, then the first ray was inside an object
						if (Vector3.Angle (rayDownNormal, hit.normal) > 0) 
						{
							// Update the position to the higher point
							m_newPosition = hit.point;
						}
					}
					return true;
				}
			}
		}
		// If ray doesn't find floor, set position to point on wall
		//print("No floor found");
		m_newPosition = wallHit.point;
		return false;
	}

	public Vector3 getNewPosition()
	{
		return m_newPosition;
	}

	public Vector3 getWallPoint() {
		return m_wallPoint;
	}
}
