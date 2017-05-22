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
		validSpaceCol = GameObject.FindGameObjectWithTag(Tags.validSpaceCol).gameObject;
        testCol = validSpaceCol.GetComponent<CapsuleCollider>();
        testCol.enabled = false;
    }

	/*
	 * Does a reverse sweep test to find a position with enough space for the player. 
     * It uses a CapsuleCollider attached as a child to the player and puts it where the player is aiming. 
     * It then checks for all overlapping colliders and moves the CapsuleCollider towards the player as long 
     * as it intersects with one of the found colliders.
	 */
	public bool findEnoughSpace(Vector3 origin, out Vector3 target) 
	{
        // Set position and rotation of the test collider object to the player's values
        testCol.enabled = true;
		testCol.transform.position = origin;
        testCol.transform.rotation = transform.rotation;

        // Looks for overlapping colliders using player measurements
        overlap = Physics.OverlapCapsule(testCol.bounds.min, testCol.bounds.max, m_playerWidth);
        
        // Iterates through all overlapping colliders and moves the testCol closer to the player as long as it intersects
        foreach (Collider col in overlap)
            if (col != testCol && col.tag != Tags.player)
                if (testCol.bounds.Intersects(col.bounds))
                    testCol.transform.position = Vector3.MoveTowards(testCol.transform.position, transform.position, m_playerWidth);

		// Return the new valid position and disable the test collider
        target = testCol.transform.position;
        testCol.enabled = false;
		return true;
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
