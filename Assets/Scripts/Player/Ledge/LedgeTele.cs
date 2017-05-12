using UnityEngine;
using System.Collections;

/* TODO: 
 *
 */

public class LedgeTele : FindLedge {

	// Variables for findValidPosition()
	private float m_distanceDelta = 0.5f;
	private bool m_indPositionSet = false;
	private bool m_isTeleporting = false;
	private Vector3 m_validIndPosition = new Vector3(0, 0, 0);
	private Vector3 m_invalidPosition = new Vector3 (0, 0, 0);

	/*
	 * Raycasts to find out if there is enough space for the player to teleport to target location
	 */
	public bool findEnoughSpace(RaycastHit hit) 
	{
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
			// If true, not enough space
			if (isSpaceObstructedFloor(hit, newUpRight)) 
				enoughSpace = false;

		}
		// Surface was wall
		else if (angle > 45 && angle < 135) 
		{
			if (isSpaceObstructedWall(out wallNormalRayHit, hit, newUpRight)) 
			{
				// If true, not enough space
				enoughSpace = false;

				Debug.DrawRay(wallNormalRayHit.point, wallNormalRayHit.normal, new Color (0.751265f, 0.25678f, 0.3415136f));
				
				/* Sets a position based on the initial hit, it's normal, and the new hit's normal.
				 * This puts the indicator between two walls instead of inside one of them.
				 */
				m_validIndPosition = hit.point + hit.normal + wallNormalRayHit.normal;
				m_indPositionSet = true;

				Debug.DrawRay (hit.point, hit.normal + wallNormalRayHit.normal, Color.white);
			}
		}
		// Surface was roof
		else if (angle >= 135)
		{
			// If true, not enough space
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
		validPosition = new Vector3(0, 0, 0);

		RaycastHit hit = new RaycastHit();
		while (!enoughSpace && !arrived) 
		{
			print ("Looking for space");
			if (Vector3.Distance (workPosition, transform.position) == 0) 
			{
				print ("Arrived at player");
				arrived = true;
				return false;
			}

			// Get a new position m_distanceDelta units closer to the player
			workPosition = Vector3.MoveTowards(workPosition, transform.position, m_distanceDelta);

			// Raycast in all directions to look for obstruction
			if (m_raycaster.doRaycast (out hit, Vector3.up, workPosition, m_playerLength * 1.2f) &&
				m_raycaster.doRaycast (out hit, -Vector3.up, workPosition, m_playerLength * 1.2f) ||
			    m_raycaster.doRaycast (out hit, Vector3.left, workPosition, m_playerWidth) &&
			    m_raycaster.doRaycast (out hit, -Vector3.left, workPosition, m_playerWidth) ||
			    m_raycaster.doRaycast (out hit, Vector3.forward, workPosition, m_playerWidth) &&
			    m_raycaster.doRaycast (out hit, -Vector3.forward, workPosition, m_playerWidth)) 
			{
				// Not enough space
			} 
			else 
			{
				print ("Found new position");
				enoughSpace = true;
				validPosition = workPosition;
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
