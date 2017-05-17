using UnityEngine;
using System.Collections;

public class LedgeTele : FindLedge {

	// Variables for findValidPosition()
	private float m_distanceDelta = 0.5f;
	private bool m_indPositionSet = false;
	private bool m_isTeleporting = false;
	private Vector3 m_validIndPosition = new Vector3(0, 0, 0);
	private Vector3 m_invalidPosition = new Vector3 (0, 0, 0);
    private Collider[] overlap;
    private GameObject validSpaceCol;
    private Collider testCol;

    void Start() 
    {
        validSpaceCol = transform.FindChild("validSpaceCol").gameObject;
        testCol = validSpaceCol.GetComponent<CapsuleCollider>();
        testCol.enabled = false;
    }

	/*
	 * Raycasts to find out if there is enough space for the player to teleport to target location
	 */
    public bool findEnoughSpace(RaycastHit hit, out Vector3 target) 
	{
        Vector3 relocatedPosition = hit.point + hit.normal * 0.1f;
        Vector3 direction = new Vector3(0, 0, 0);
        float distanceToMove = 0;

        // Set position and rotation of the test collider object to calc new position
        testCol.enabled = true;
        testCol.transform.position = relocatedPosition;
        testCol.transform.rotation = transform.rotation;

        // Looks for overlapping colliders using player measurements
        overlap = Physics.OverlapCapsule(
            testCol.bounds.min, 
            testCol.bounds.max, 
            m_playerWidth);

        print("Colliders: " + overlap.Length);
        print("Original pos: " + relocatedPosition);

        Vector3 totalDirection = new Vector3(0, 0, 0);
        // Iterates through all overlapping colliders and moves the testCol just enough to not overlap anymore
        foreach (Collider col in overlap)
        {
            if (col != testCol && col.tag != Tags.player)
            {
                if (testCol.bounds.Intersects(col.bounds))
                {
                    Vector3 closestPoint = col.bounds.ClosestPoint(testCol.transform.position);
                    totalDirection += testCol.transform.position - closestPoint;
                    testCol.transform.position = Vector3.MoveTowards(testCol.transform.position, transform.position, m_playerWidth);
                }

//                if (Physics.ComputePenetration(
//                        testCol, testCol.transform.position, testCol.transform.rotation,
//                        col, col.transform.position, col.transform.rotation,
//                        out direction, out distanceToMove))
//                {
//                    totalDirection += direction * distanceToMove;
//                    //relocatedPosition += direction * distanceToMove;
//                    print("Penetrated ur mum");
//                }
            }
        }
        target = testCol.transform.position;
        Debug.DrawRay(hit.point, totalDirection, Color.red);
        testCol.enabled = false;
        print("RelocatedPos: " + relocatedPosition);



        // ############# OLD CODE. TO BE CHANGED #############

        // Angle used to determine on which surface there was a hit
		float angle = Vector3.Angle(Vector3.up, hit.normal);
		bool newUpRight = false;

		// If the hit wasn't on roof or floor, create new right and up vectors
		if (angle > 0.1 && angle < 179.9)
			newUpRight = true;

		m_invalidPosition = hit.point;

		RaycastHit rayHit = new RaycastHit();
		RaycastHit wallNormalRayHit = new RaycastHit();
		bool enoughSpace = true;
		m_indPositionSet = false;

		// Surface was floor
		if (angle <= 45) 
		{
//			print ("Surface was floor");
			if (isSpaceObstructedFloor(hit, newUpRight)) 
				enoughSpace = false;

		}
		// Surface was wall
		else if (angle > 45 && angle < 135) 
		{
//			print ("Surface was wall");
			if (isSpaceObstructedWall(out wallNormalRayHit, hit, newUpRight)) 
			{
				enoughSpace = false;
				//new Color (0.751265f, 0.25678f, 0.3415136f)
//              Debug.DrawRay(wallNormalRayHit.point, wallNormalRayHit.normal, Color.red);
				
			    // Sets a position based on the initial hit, it's normal, and the new hit's normal.
				Vector3 maybeValid = hit.point + hit.normal + wallNormalRayHit.normal;
                float distance = Vector3.Distance(maybeValid, hit.point);
                //m_validIndPosition = Vector3.MoveTowards(maybeValid, transform.position, distance * 0.5f);

//                if (Vector3.Angle(Vector3.up, Camera.main.transform.forward) < 30) 
//                {
//                    Vector3 playerDir = transform.position - maybeValid;
//                    playerDir.y = 0;
//                    m_validIndPosition = maybeValid + playerDir * 0.25f;
//                }
                   

                // Adjust position using rays
				adjustPosition(maybeValid, out m_validIndPosition);


				m_indPositionSet = true;


				//Debug.DrawRay (hit.point, hit.normal + wallNormalRayHit.normal, Color.white);
			}
		}
		// Surface was roof
		else if (angle >= 135)
		{
			print ("Surface was roof");
			if (isSpaceObstructedRoof(hit, newUpRight)) 
				enoughSpace = false;
		}
//		print ("Enough space: " + enoughSpace);
		return enoughSpace;
	}

	public bool findValidPosition(Vector3 invalidPosition, out Vector3 validPosition) 
	{
		/*
		 * Check for enough space along the player's aim ray.
		 * Set m_newPosition to the first position with enough space
		 */

		Vector3 playerLook = Camera.main.transform.forward;
		Vector3 workPosition = invalidPosition;
		bool enoughSpace = false;
		bool arrived = false;
        validPosition = transform.position;

		RaycastHit up = new RaycastHit();
		RaycastHit down = new RaycastHit();
		RaycastHit left = new RaycastHit();
		RaycastHit right = new RaycastHit();
		RaycastHit forward = new RaycastHit();
		RaycastHit backward = new RaycastHit();


		while (!enoughSpace && !arrived) 
		{
			bool enoughWidth = true;
			bool enoughHeight = true;
			bool enoughDepth = true;
//			print ("Looking for space");
			if (Vector3.Distance (workPosition, transform.position) == 0) 
			{ // Found no new position
				print ("Arrived at player");
				arrived = true;
				return false;
			}

			// Get a new position m_distanceDelta units closer to the player
			workPosition = Vector3.MoveTowards(workPosition, transform.position, m_distanceDelta);

			// Raycast in all directions to look for obstruction
			if (m_raycaster.doRaycast (out up, Vector3.up, workPosition, m_playerLength + m_margin) &&
			    m_raycaster.doRaycast (out down, -Vector3.up, workPosition, m_playerLength + m_margin))
				enoughHeight = false;
			
			if (m_raycaster.doRaycast (out left, Vector3.left, workPosition, m_playerWidth + m_margin) &&
			    m_raycaster.doRaycast (out right, -Vector3.left, workPosition, m_playerWidth + m_margin))
				enoughWidth = false;
			
			if (m_raycaster.doRaycast (out forward, Vector3.forward, workPosition, m_playerWidth + m_margin) &&
			    m_raycaster.doRaycast (out backward, -Vector3.forward, workPosition, m_playerWidth + m_margin))
				enoughDepth = false;
//			Debug.DrawRay(workPosition, Vector3.forward, Color.white, 2);
//			Debug.DrawRay(workPosition, -Vector3.forward, Color.black, 2);
//			Debug.DrawRay(workPosition, Vector3.up, Color.green, 2);
//			Debug.DrawRay(workPosition, -Vector3.up, Color.gray, 2);
//			Debug.DrawRay(workPosition, Vector3.left, Color.yellow, 2);
//			Debug.DrawRay(workPosition, -Vector3.left, Color.red, 2);
//			print(enoughHeight + " " + enoughWidth + " " + enoughDepth);

			if (!enoughHeight || !enoughWidth || !enoughDepth)
			{
				// Not enough space
			} 
			else 
			{
//				print ("Found new position");
				enoughSpace = true;
				validPosition = workPosition;
//				print (validPosition);
			}
		}

		return true;
	}

	public void arrivedAtWall() 
	{
		m_isLedgeBlocked = false;
		m_isTeleporting = false;
	}

	public void startTeleporting() 
	{
		m_isTeleporting = true;
	}

	public bool isTeleporting() 
	{
		return m_isTeleporting;	
	}

	/*
	 * Always returns the point on the wall
	 */
	public Vector3 getWallPoint() 
	{
		return getWallPoint();
	}

	public Vector3 getInvalidPosition() 
	{
		return m_invalidPosition;
	}

	public bool isIndPosSet() 
	{
		return m_indPositionSet;
	}

	public Vector3 getValidIndPosition() 
	{
		return m_validIndPosition;
	}
}
