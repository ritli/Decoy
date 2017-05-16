using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FindLedge : MonoBehaviour {


	// Variables used in findLedge()
	protected Vector3 m_newPosition = new Vector3(0, 0, 0);
	protected Vector3 m_wallPoint = new Vector3(0, 0, 0);
	protected float m_playerLength;
	protected float m_playerWidth;
	protected Raycast m_raycaster;
	protected bool m_isLedgeBlocked = false;
	private float positionOffset = 0.5f;
	protected float m_margin = 0.125f;

	[Tooltip("The distance you need to be from a ledge to be able to climb it")]
	public float ledgeSensitivity;

	void Awake() 
	{
		m_raycaster = GetComponent<Raycast>();
		m_playerLength = GetComponent<CharacterController>().height;
		m_playerWidth = GetComponent<CharacterController> ().radius * 2;	
	}

	/* 
     * Finds a ledge given a raycastHit from the wall
     * Used by both teleport and regular grab
   	 */
	public bool findLedge(RaycastHit wallHit, out Vector3 wallTarget, out Vector3 floorTarget)
	{
		m_wallPoint = wallHit.point + wallHit.normal;
		wallTarget = m_wallPoint;
		floorTarget = new Vector3(0, 0, 0);
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
		raySweepUp.origin = wallHit.point + wallHit.normal * 0.1f;
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
		//Debug.DrawRay (raySweepUp.origin, raySweepUp.direction * (ledgeSensitivity + m_playerLength), Color.white);
		//Debug.DrawRay (raySweepForward.origin, raySweepForward.direction, Color.white);

		m_isLedgeBlocked = false;

		// Sweeping upward from beside the wall
		if (m_raycaster.doRaycast(out hit, raySweepUp.direction, raySweepUp.origin, m_playerLength))
		{
			//Debug.DrawRay (hit.point, hit.normal, Color.cyan, 5);
			m_newPosition = m_wallPoint + hit.normal * m_playerLength;
			m_newPosition.y = hit.point.y + hit.normal.y * m_playerLength;
			wallTarget = hit.point + hit.normal * m_playerLength;
			m_isLedgeBlocked = true;
//			print ("sweep up");
			return false;
		}

		raySweepUp.origin = newPosition;

		//Debug.DrawRay (raySweepForward.origin, raySweepForward.direction * m_playerWidth * 2, Color.white);

		// Sweeping forward
		if (m_raycaster.doRaycast(out hit, raySweepForward.direction, raySweepForward.origin, m_playerWidth * 2)) 
		{
//			print ("Found something forward");
			if (Vector3.Angle (hit.normal, Vector3.up) > 45) 
			{
				//Debug.DrawRay (hit.point, hit.normal, Color.yellow, 3);
				// There is a wall where floor might be...
				m_newPosition = m_wallPoint;
				m_isLedgeBlocked = true;
//				print ("sweep forward");
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
					// Store the found normal to compare with rayDown2
					rayDownNormal = hit.normal;

					// Set the new position
					m_newPosition = hit.point;

					// Sweeping upward from ontop of the wall
					if (m_raycaster.doRaycast(out hit, raySweepUp.direction, raySweepUp.origin, ledgeSensitivity + m_playerLength))
					{
						//Debug.DrawRay (hit.point, hit.normal, Color.cyan);
						m_newPosition = m_wallPoint;
						m_isLedgeBlocked = true;
						return false;
					}

					// Raycast again to check if the first hit was inside an object
					if (m_raycaster.doRaycast(out hit, rayDown2.direction, rayDown2.origin)) 
					{
						//Debug.DrawRay(hit.point, hit.normal, Color.blue);

						/* If the angle between the two rays is different, 
						 * or the difference in Y between the two normals is larger than zero,
						 * then the first ray was inside an object */
						if (Vector3.Angle (rayDownNormal, hit.normal) > 0 || !(Mathf.Abs(hit.normal.y - rayDownNormal.y) > 0))
						{
							// Update the position to the higher point
							m_newPosition = hit.point;
						}
					}

					// Check if there is enough space up on the ledge
					Vector3 offsetHit = hit.point + hit.normal * 0.01f;
					bool newUpRight = 	Vector3.Angle (Vector3.up, hit.normal) > 0.1 && 
										Vector3.Angle (Vector3.up, hit.normal) < 179.9 ? true : false;

					if (isSpaceObstructedFloor(hit, newUpRight))
						return false;

					floorTarget = m_newPosition;
					return true;
				}
			}
		}
		// If ray doesn't find floor, set position to point on wall
		m_newPosition = m_wallPoint;
		return false;
	}

	private void createNewLocalVectors(out Vector3 localUp, out Vector3 localRight, RaycastHit hit) 
	{
		// New local vectors based on the hit's normal
		localRight = Vector3.Cross (Vector3.up, hit.normal);
		localUp = Vector3.Cross (localRight, hit.normal);
		//Debug.DrawRay(hit.point, localRight, Color.magenta);
		//Debug.DrawRay(hit.point, localUp, new Color(19.89f/225f, 204f/255f, 176f/255f)); // Cyan
		//Debug.DrawRay(hit.point, hit.normal, new Color(1f, 0.56f, 0.2f)); // Light brown
	}

	protected bool isSpaceObstructedFloor(RaycastHit hit, bool createNewLocal) 
	{
		Vector3 localRight = Vector3.right;
		Vector3 localUp = Vector3.forward;

		// Move the point up a bit to prevent it raycasting from inside the object
		Vector3 offsetHit = hit.point + hit.normal * 0.01f;

		if (createNewLocal)
			createNewLocalVectors(out localUp, out localRight, hit);

		RaycastHit rayHit = new RaycastHit ();
		return (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerWidth + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerWidth + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth + m_margin));
	}

	protected bool isSpaceObstructedWall(out RaycastHit wallNormalHit, RaycastHit hit, bool createNewLocal) 
	{
		Vector3 localRight = Vector3.right;
		Vector3 localUp = Vector3.forward;

		// Move the point a bit to prevent it raycasting from inside the object
		Vector3 offsetHit = hit.point + hit.normal * 0.01f;

		if (createNewLocal)
			createNewLocalVectors(out localUp, out localRight, hit);

		//Debug.DrawRay (hit.point, hit.normal, Color.red);

		RaycastHit rayHit = new RaycastHit ();
		return (m_raycaster.doRaycast (out wallNormalHit, hit.normal, hit.point, m_playerWidth + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerLength + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerLength + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth + m_margin));
	}

	protected bool isSpaceObstructedRoof(RaycastHit hit, bool createNewLocal) 
	{
		Vector3 localRight = Vector3.right;
		Vector3 localUp = Vector3.forward;

		// Move the point up a bit to prevent it raycasting from inside the object
		Vector3 offsetHit = hit.point + hit.normal * 0.01f;

		if (createNewLocal)
			createNewLocalVectors(out localUp, out localRight, hit);
		
		RaycastHit rayHit = new RaycastHit ();
		return (m_raycaster.doRaycast (out rayHit, hit.normal, hit.point, m_playerLength + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localUp, offsetHit, m_playerWidth + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localUp, offsetHit, m_playerWidth + m_margin) ||
			m_raycaster.doRaycast (out rayHit, localRight, offsetHit, m_playerWidth + m_margin) &&
			m_raycaster.doRaycast (out rayHit, -localRight, offsetHit, m_playerWidth + m_margin));
	}

	protected void adjustPosition(Vector3 current, out Vector3 target) 
	{
		print("Adjusting position");
		RaycastHit hit1 = new RaycastHit ();
		RaycastHit hit2 = new RaycastHit ();
		target = current;

		if (m_raycaster.doRaycast(out hit1, Vector3.up, current, m_playerLength) ||
			m_raycaster.doRaycast(out hit2, -Vector3.up, current, m_playerLength) ||
			m_raycaster.doRaycast(out hit1, Vector3.left, current, m_playerWidth) ||
			m_raycaster.doRaycast(out hit2, -Vector3.left, current, m_playerWidth) ||
			m_raycaster.doRaycast(out hit1, Vector3.forward, current, m_playerWidth) ||
			m_raycaster.doRaycast(out hit2, -Vector3.forward, current, m_playerWidth))
		{
			current = Vector3.MoveTowards(current, transform.position, 0.5f);
		}
		target = current;

		//if (m_raycaster.doRaycast(out hit1, Vector3.forward, current, m_playerWidth) ||
		//	m_raycaster.doRaycast(out hit2, -Vector3.forward, current, m_playerWidth))
		//	target = Vector3.MoveTowards(current, transform.position, 0.5f);
		//	//target += hit1.normal + hit2.normal;
		//if (m_raycaster.doRaycast(out hit1, Vector3.up, current, m_playerLength) ||
		//	m_raycaster.doRaycast(out hit2, -Vector3.up, current, m_playerLength))
		//	target = Vector3.MoveTowards(current, transform.position, 0.5f);
		//	//target += hit1.normal + hit2.normal;
		//if (m_raycaster.doRaycast(out hit1, Vector3.left, current, m_playerWidth) ||
		//	m_raycaster.doRaycast(out hit2, -Vector3.left, current, m_playerWidth))
		//	target = Vector3.MoveTowards(current, transform.position, 0.5f);
		//	//target += hit1.normal + hit2.normal;
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

	public bool isLedgeBlocked() 
	{
		return m_isLedgeBlocked;	
	}

	public void hitNothing() 
	{
		m_isLedgeBlocked = false;	
	}
}
