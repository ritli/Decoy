using UnityEngine;
using System.Collections;

/* TODO: 
 *
 */

public class LedgeDetection : MonoBehaviour {


	// Variables used in findLedge()
    private Vector3 m_wallNormal;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);
	private Raycast m_raycaster;
    private float positionOffset = 0.5f;
	private Vector3 m_wallPoint = new Vector3(0, 0, 0);
	private bool m_isLedgeBlocked = false;
	private GameObject m_ind;
	private float m_playerLength;
	private float m_playerWidth;

    // Variables for nearby ledge detection
    private bool m_inTrigger = false;
    private Collider m_collider;
    private bool m_canGrab = false;
	private bool m_isTeleporting = false;
	private bool m_roof = false;

	// Variables for findValidPosition()
	private float m_distanceDelta = 0.5f;

	private Vector3 m_invalidPosition = new Vector3(0, 0, 0);

	[Tooltip("The distance you need to be from a ledge to be able to climb it")]
    public float ledgeSensitivity;

	[Header("Directional sensitivity")]
	[Tooltip("Value between [0, 180] where 0 is straight into the wall and 180 is straight away from the wall")]
	public float horizontal;
	[Tooltip("Value between [0, 90] where 0 is straight into the wall and 90 is straight up or down")]
	public float vertical;


    // Use this for initialization
    void Start () {
		m_raycaster = GetComponent<Raycast>();
		m_playerLength = GetComponent<CharacterController>().height;
		m_playerWidth = GetComponent<CharacterController> ().radius * 2;
	}


	Vector3 calcNormal() 
	{
		Vector3 direction = m_collider.ClosestPointOnBounds(transform.position);
		direction = transform.position - direction;
		return direction;
	}

    /*
     * Update is used for finding ledge on a wall near the player
     */
    void Update()
	{
		m_isLedgeBlocked = false;
		if (m_inTrigger && m_collider != null && !m_isTeleporting && !m_roof)
        {
			Vector3 hitNormal = -calcNormal();
            Vector3 cameraDirection = Camera.main.transform.forward;
			Vector3 cameraHoriz = cameraDirection;
			cameraHoriz.y = 0;
			Vector3 cameraVert = cameraDirection;

//          Debug.DrawRay(transform.position, hitNormal * 3, Color.yellow);
//			Debug.DrawRay(transform.position, cameraVert * 3, Color.blue);

            RaycastHit hit = new RaycastHit();

			bool angleOk = 	(Vector3.Angle (cameraHoriz, hitNormal) < horizontal) && 
							(Vector3.Angle (cameraVert,  hitNormal) < vertical) ? true : false;
            bool raySuccess = m_raycaster.doRaycast(out hit, hitNormal, transform.position);
			bool foundLedge = false;
			if (raySuccess)
				foundLedge = findLedge(hit);

            if (angleOk && foundLedge)
                m_canGrab = true;
            else
                m_canGrab = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
		if (other.transform.tag != Tags.noGrab && other.transform.tag != Tags.player)
		{
			m_collider = other;
			m_inTrigger = true;
		}
    }

	/*
	 * Determines if a collider is roof
	 */
	void OnTriggerStay(Collider other) 
	{
		if (other.transform.tag != Tags.player) 
		{
			Vector3 normal = calcNormal ();
			float angle = Vector3.Angle (-Vector3.up, normal);
			if (angle < 45) 
			{
				m_roof = true;
			}
			Debug.DrawRay (m_collider.ClosestPointOnBounds(transform.position), normal * 3f, Color.red);
		}
	}

    void OnTriggerExit(Collider other)
    {
		/* If the last collidered that the player entered is the same as the exited, 
		 * then the player isn't in a trigger anymore
		 */
		if (m_collider == other)
			m_inTrigger = false;
        m_canGrab = false;
		m_roof = false;
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
//		Debug.DrawRay(wallHit.point, direction * 4, Color.§);

		// Creates a right vector based on wallNormal and up
		Vector3 hitRight = Vector3.Cross(Vector3.up, wallHit.normal);

		// Rotates around the right vector to face toward the floor
        direction = Quaternion.AngleAxis(-90f, hitRight) * direction.normalized;
		
//		Debug.DrawRay(wallHit.point, hitRight * 4, Color.magenta);
//		Debug.DrawRay(wallHit.point, direction * 4, Color.grey);
	
		// Sweeptest rays up and forward
		Ray raySweepUp = new Ray();
		raySweepUp.origin = m_wallPoint;
		raySweepUp.direction = Vector3.up;

		Vector3 sweepForward = raySweepUp.origin;
		sweepForward.y += ledgeSensitivity;
		Ray raySweepForward = new Ray();
		raySweepForward.origin = sweepForward;
		raySweepForward.direction = -wallHit.normal;


		// Creates a point above and a little bit inside the wall to look for floor
		Vector3 localUp = Vector3.Cross (wallHit.normal, hitRight);
		Vector3 newPosition = wallHit.point + localUp * ledgeSensitivity - wallHit.normal * positionOffset;

        // A ray above target position and facing towards the wall's floor
		Ray rayDown = new Ray();
		rayDown.origin = newPosition;
        rayDown.direction = direction;

		// Another ray used to determine if other ray is inside terrain
		Ray rayDown2 = new Ray();
		rayDown2.origin = newPosition + localUp * 1.5f;
		rayDown2.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
//		Debug.DrawRay(wallHit.point, wallHit.normal * 4, Color.green);
//		Debug.DrawRay(wallHit.point, wallHit.normal * -4, Color.red);

		// Ray moved up and looking down based on wallNormal
//		Debug.DrawRay(m_rayDown.origin, m_rayDown.direction * 4, Color.yellow);
//		Debug.DrawRay(m_rayDown2.origin, m_rayDown2.direction * 4, Color.cyan);

		// Sweeptest using rays
		Debug.DrawRay (raySweepUp.origin, raySweepUp.direction * (ledgeSensitivity + m_playerLength), Color.white);
//		Debug.DrawRay (raySweepForward.origin, raySweepForward.direction, Color.white);

		m_isLedgeBlocked = false;

		// Sweeping upward from beside the wall
		if (m_raycaster.doRaycast(out hit, raySweepUp.direction, raySweepUp.origin, ledgeSensitivity))
		{
			Debug.DrawRay (hit.point, hit.normal, Color.cyan);
			m_newPosition = m_wallPoint + hit.normal * m_playerLength;
			m_newPosition.y = hit.point.y + hit.normal.y * m_playerLength;
			m_isLedgeBlocked = true;
			return false;
		}

		raySweepUp.origin = newPosition;

		// Sweeping forward
		if (m_raycaster.doRaycast (out hit, raySweepForward.direction, raySweepForward.origin, ledgeSensitivity)) 
		{
			if (Vector3.Angle (hit.normal, Vector3.up) > 45) 
			{
				Debug.DrawRay (hit.point, hit.normal, Color.black);
				// There is a wall where floor might be...
				m_newPosition = m_wallPoint;
				m_isLedgeBlocked = true;
				return false;
			}
		}

		Vector3 rayDownNormal;

		// If ray hit the floor
		if (m_raycaster.doRaycast(out hit, rayDown.direction, rayDown.origin))
		{
			if (Vector3.Angle(hit.normal, Vector3.up) <= 45)
			{
				// Ray from the floor above ledge
//				Debug.DrawRay(hit.point, hit.normal * 5, Color.white);

				// If the floor is above where the aim is
				if (hit.point.y >= wallHit.point.y)
				{
					// Sweeping upward from ontop of the wall
					if (m_raycaster.doRaycast(out hit, raySweepUp.direction, raySweepUp.origin, ledgeSensitivity + m_playerLength))
					{
						Debug.DrawRay (hit.point, hit.normal, Color.cyan);
						m_newPosition = m_wallPoint;
						m_isLedgeBlocked = true;
						return false;
					}

					// Store the found normal to compare with rayDown2
					rayDownNormal = hit.normal;

					// Set the new position
					m_newPosition = hit.point;

					// Raycast again to check if the first hit was inside an object
					if (m_raycaster.doRaycast(out hit, rayDown2.direction, rayDown2.origin)) 
					{
						Debug.DrawRay(hit.point, hit.normal * 3, Color.blue);

						/* If the angle between the two rays is different, 
						 * or the difference in Y between the two normals is larger than zero,
						 * then the first ray was inside an object */
						if (Vector3.Angle (rayDownNormal, hit.normal) > 0 || !(Mathf.Abs(hit.normal.y - rayDownNormal.y) > 0))
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
		m_newPosition = m_wallPoint;
		return false;
	}

	/*
	 * Raycasts to find out if there is enough space for the player to teleport to target location
	 */
	public bool findEnoughSpace(RaycastHit hit) 
	{
		// Angle used to determine on which surface there was a hit
		float angle = Vector3.Angle(Vector3.up, hit.normal);

		Vector3 localRight = Vector3.right;
		Vector3 localUp = Vector3.forward;

		// If the hit wasn't on roof or floor, create new right and up vectors
		if (angle > 0.1 && angle < 179.9) 
		{
			localRight = Vector3.Cross (Vector3.up, hit.normal);
			localUp = Vector3.Cross (localRight, hit.normal);
		}
		// Move the point up a bit to prevent it from raycasting from inside the object
		hit.point = hit.point + hit.normal * 0.2f;
		Debug.DrawRay(hit.point, localRight, Color.magenta);
		Debug.DrawRay(hit.point, localUp, new Color(0.078f, 204f/255f, 176f/255f)); // Cyan
		Debug.DrawRay(hit.point, hit.normal, new Color(1f, 0.56f, 0.2f)); // Light brown

		m_invalidPosition = hit.point;

		RaycastHit rayHit = new RaycastHit ();
		bool enoughSpace = true;
		// Surface was floor
		if (angle < 45) 
		{
			if (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localUp, hit.point, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localUp, hit.point, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localRight, hit.point, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, hit.point, m_playerWidth)) 
			{
				// Not enough space
				enoughSpace = false;
			}
		}
		// Surface was wall
		else if (angle > 45 && angle < 135) 
		{
			if (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localUp, hit.point, m_playerLength) &&
				m_raycaster.doRaycast (out rayHit, -localUp, hit.point, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localRight, hit.point, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, hit.point, m_playerWidth )) 
			{
				// Not enough space
				enoughSpace = false;
			}
		}
		// Surface was roof
		else if (angle > 135)
		{
			if (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localUp, hit.point, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localUp, hit.point, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localRight, hit.point, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, hit.point, m_playerWidth)) 
			{
				// Not enough space
				enoughSpace = false;
			}
		}
		if (!enoughSpace)
			print ("Not enough space!");

		return enoughSpace;
	}

	public bool findValidPosition(Vector3 invalidPosition) 
	{
		/*
		 * Check for enough space along the player's aim ray.
		 * Set m_newPosition to the first position with enough space
		 */

		Vector3 playerLook = Camera.main.transform.forward;
		Vector3 currentInvalid = invalidPosition;
		bool enoughSpace = false;
		bool arrived = false;

		RaycastHit hit = new RaycastHit();
		while (!enoughSpace && !arrived) 
		{
			print ("Looking for space");
			if (Vector3.Distance (currentInvalid, transform.position) == 0) 
			{
				print ("Arrived at player");
				arrived = true;
				return false;
			}

			// Get a new position m_distanceDelta units closer to the player
			currentInvalid = Vector3.MoveTowards(currentInvalid, transform.position, m_distanceDelta);

			// Raycast in all directions to look for obstruction
			if (m_raycaster.doRaycast (out hit, Vector3.up, currentInvalid, m_playerLength) &&
			    m_raycaster.doRaycast (out hit, -Vector3.up, currentInvalid, m_playerLength) ||
			    m_raycaster.doRaycast (out hit, Vector3.left, currentInvalid, m_playerWidth) &&
			    m_raycaster.doRaycast (out hit, -Vector3.left, currentInvalid, m_playerWidth) ||
			    m_raycaster.doRaycast (out hit, Vector3.forward, currentInvalid, m_playerWidth) &&
			    m_raycaster.doRaycast (out hit, -Vector3.forward, currentInvalid, m_playerWidth)) 
			{
				// Not enough space
			} 
			else 
			{
				print ("Found new position");
				enoughSpace = true;
				m_newPosition = currentInvalid;
			}
		}

		return true;
	}

	public bool isLedgeBlocked() 
	{
		return m_isLedgeBlocked;
	}

	public void arrivedAtWall() 
	{
		m_isLedgeBlocked = false;
		m_isTeleporting = false;
	}

	public void isTeleporting() 
	{
		m_isTeleporting = true;	
	}

	/*
	 * Returns the position which is on top of the new ledge, if it is valid. 
	 * Else it returns the point on the wall
	 */
	public Vector3 getNewPosition()
	{
		return m_newPosition;
	}

	/*
	 * Always returns the point on the wall
	 */
	public Vector3 getWallPoint() 
	{
		return m_wallPoint;
	}

	public Vector3 getInvalidPosition() 
	{
		return m_invalidPosition;
	}
}
