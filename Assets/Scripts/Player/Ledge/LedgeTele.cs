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

		Vector3 localRight = Vector3.right;
		Vector3 localUp = Vector3.forward;

		// If the hit wasn't on roof or floor, create new right and up vectors
		if (angle > 0.1 && angle < 179.9) 
		{
			localRight = Vector3.Cross (Vector3.up, hit.normal);
			localUp = Vector3.Cross (localRight, hit.normal);
		}
		// Move the point up a bit to prevent it from raycasting from inside the object
		Vector3 offsetHit = hit.point + hit.normal * 0.01f;

		Debug.DrawRay(hit.point, localRight, Color.magenta);
		Debug.DrawRay(hit.point, localUp, new Color(0.078f, 204f/255f, 176f/255f)); // Cyan
		Debug.DrawRay(hit.point, hit.normal, new Color(1f, 0.56f, 0.2f)); // Light brown

		m_invalidPosition = hit.point;

		RaycastHit rayHit = new RaycastHit();
		RaycastHit wallNormalRayHit = new RaycastHit();
		bool enoughSpace = true;

		// Surface was floor
		if (angle <= 45) 
		{
//			print ("Floor");
			if (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth)) 
			{
				
				// Not enough space
				enoughSpace = false;
			}
			m_indPositionSet = false;
		}
		// Surface was wall
		else if (angle > 45 && angle < 135) 
		{
//			print ("Wall");
			if (m_raycaster.doRaycast (out wallNormalRayHit, hit.normal, hit.point, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerLength) &&
				m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth )) 
			{
				Debug.DrawRay(wallNormalRayHit.point, wallNormalRayHit.normal, new Color(0.751265f, 0.25678f, 0.3415136f));
				// Not enough space
				enoughSpace = false;
				
				// Sets a position based on the initial hit, it's normal, and the new hit's normal.
				m_validIndPosition = hit.point + hit.normal + wallNormalRayHit.normal;
				m_indPositionSet = true;

				Debug.DrawRay(hit.point, hit.normal + wallNormalRayHit.normal, Color.white);
			} else
				m_indPositionSet = false;
		}
		// Surface was roof
		else if (angle >= 135)
		{
//			print ("Roof");
			if (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength) ||
				m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerWidth) ||
				m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth) &&
				m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth)) 
			{
				// Not enough space
				enoughSpace = false;
			}

			m_indPositionSet = false;
		}
		if (!enoughSpace)
			print ("Not enough space!");

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
			if (m_raycaster.doRaycast (out hit, Vector3.up, workPosition, m_playerLength) &&
			    m_raycaster.doRaycast (out hit, -Vector3.up, workPosition, m_playerLength) ||
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
