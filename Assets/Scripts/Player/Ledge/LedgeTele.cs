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
			print ("Surface was floor");
			if (isSpaceObstructedFloor(hit, newUpRight)) 
				enoughSpace = false;

		}
		// Surface was wall
		else if (angle > 45 && angle < 135) 
		{
			print ("Surface was wall");
			if (isSpaceObstructedWall(out wallNormalRayHit, hit, newUpRight)) 
			{
				enoughSpace = false;
				//new Color (0.751265f, 0.25678f, 0.3415136f)
				Debug.DrawRay(wallNormalRayHit.point, wallNormalRayHit.normal, Color.yellow);
				
				/* Sets a position based on the initial hit, it's normal, and the new hit's normal.
				 * This puts the indicator between two walls instead of inside one of them.
				 */
				Vector3 maybeValid = hit.point + hit.normal + wallNormalRayHit.normal;
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
		print ("Enough space: " + enoughSpace);
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

		RaycastHit up = new RaycastHit();
		RaycastHit down = new RaycastHit();
		RaycastHit left = new RaycastHit();
		RaycastHit right = new RaycastHit();
		RaycastHit forward = new RaycastHit();
		RaycastHit backward = new RaycastHit();

		bool enoughWidth = true;
		bool enoughHeight = true;
		bool enoughDepth = true;

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
			if (m_raycaster.doRaycast (out up, Vector3.up, workPosition, m_playerLength + m_margin) &&
			    m_raycaster.doRaycast (out down, -Vector3.up, workPosition, m_playerLength + m_margin))
				enoughHeight = false;
			
			if (m_raycaster.doRaycast (out left, Vector3.left, workPosition, m_playerWidth + m_margin) &&
			    m_raycaster.doRaycast (out right, -Vector3.left, workPosition, m_playerWidth + m_margin))
				enoughWidth = false;
			
			if (m_raycaster.doRaycast (out forward, Vector3.forward, workPosition, m_playerWidth + m_margin) &&
			    m_raycaster.doRaycast (out backward, -Vector3.forward, workPosition, m_playerWidth + m_margin))
				enoughDepth = false;
			
			if (!enoughHeight || !enoughWidth || !enoughDepth)
			{
				// Not enough space
			} 
			else 
			{
				print ("Found new position");
				enoughSpace = true;

				if (!enoughHeight)
					workPosition += up.normal + down.normal;
				if (!enoughWidth)
					workPosition += left.normal + right.normal;
				if (!enoughDepth)
					workPosition += forward.normal + backward.normal;

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
