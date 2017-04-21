﻿using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

	// Variables used in findLedge()
    private Vector3 m_wallNormal;
    private Ray m_rayDown;
	private Ray m_rayDown2;
	private Ray m_raySweepUp;
	private Ray m_raySweepForward;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);
	private Raycast m_raycaster;
    private float positionOffset = 0.5f;
	private Vector3 m_wallPoint = new Vector3(0, 0, 0);
	private bool m_isLedgeBlocked = false;
	private GameObject m_ind;
	private float m_playerLength = 3f;

    // Variables for nearby ledge detection
    private bool m_inTrigger = false;
    private Collider m_collider;
    private bool m_canGrab = false;
	private bool m_isTeleporting = false;

	[Tooltip("The distance you need to be from a ledge to be able to climb it")]
    public float ledgeSensitivity;

    [Tooltip("Determines the angle you need to grab the ledge while looking at the wall")]
    public float directionSensitivity;


    // Use this for initialization
    void Start () {
		m_raycaster = GetComponent<Raycast>();
	}


    /*
     * Update is used for finding ledge on a wall near the player
     */
    void Update()
	{
		m_isLedgeBlocked = false;

		if (m_inTrigger && m_collider != null && !m_isTeleporting)
        {
            Vector3 direction = new Vector3(0, 0, 0);
            direction = m_collider.ClosestPointOnBounds(transform.position);
            direction = transform.position - direction;
            Vector3 cameraDirection = Camera.main.transform.forward;

//          Debug.DrawRay(transform.position, direction * 20, Color.yellow);

			/*
			 * 
			 * Normal från taket ska göras något åt
			 */


            RaycastHit hit = new RaycastHit();

            bool angleOk = Vector3.Angle(cameraDirection, direction) > 180 - directionSensitivity ? true : false;
            //bool isWall = Vector3.Angle(direction, Vector3.up) > 45 ? true : false;
            bool raySuccess = m_raycaster.doRaycast(out hit, -direction, transform.position);
			bool foundLedge = false;
			if (raySuccess)
				foundLedge = findLedge (hit);

//          print("angleOk: " + angleOk);

            if (angleOk && foundLedge)
                m_canGrab = true;
            else
                m_canGrab = false;
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
//		print ("Hit: " + wallHit.point);
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
		m_raySweepUp.origin = m_wallPoint;
		m_raySweepUp.direction = Vector3.up;

		Vector3 sweepForward = m_raySweepUp.origin;
		sweepForward.y += ledgeSensitivity;
		m_raySweepForward.origin = sweepForward;
		m_raySweepForward.direction = -wallHit.normal;


		// Creates a point above and a little bit inside the wall to look for floor
		Vector3 localUp = Vector3.Cross (wallHit.normal, hitRight);
		Vector3 newPosition = wallHit.point + localUp * ledgeSensitivity - wallHit.normal * positionOffset;

        // A ray above target position and facing towards the wall's floor
		m_rayDown.origin = newPosition;
        m_rayDown.direction = direction;

		// Another ray used to determine if other ray is inside terrain
		m_rayDown2.origin = newPosition + localUp * 2.5f;
		m_rayDown2.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
//		Debug.DrawRay(wallHit.point, wallHit.normal * 4, Color.green);
//		Debug.DrawRay(wallHit.point, wallHit.normal * -4, Color.red);

		// Ray moved up and looking down based on wallNormal
//		Debug.DrawRay(m_rayDown.origin, m_rayDown.direction * 4, Color.yellow);
		//Debug.DrawRay(m_rayDown2.origin, m_rayDown2.direction * 4, Color.cyan);

		// Sweeptest using rays
		Debug.DrawRay (m_raySweepUp.origin, m_raySweepUp.direction, Color.red);
		Debug.DrawRay (m_raySweepForward.origin, m_raySweepForward.direction, Color.white);

		m_isLedgeBlocked = false;

		// Sweeping upward
		if (m_raycaster.doRaycast(out hit, m_raySweepUp.direction, m_raySweepUp.origin, ledgeSensitivity + m_playerLength))
		{
			Debug.DrawRay (hit.point, hit.normal, Color.cyan);
			m_newPosition = m_wallPoint + hit.normal * m_playerLength;
			m_newPosition.y = hit.point.y + hit.normal.y * m_playerLength;
			m_isLedgeBlocked = true;
			print ("Roof in the way");
			return false;
		}

		// Sweeping forward
		if (m_raycaster.doRaycast (out hit, m_raySweepForward.direction, m_raySweepForward.origin, ledgeSensitivity * 3f)) 
		{
			if (Vector3.Angle (hit.normal, Vector3.up) > 45) 
			{
				Debug.DrawRay (hit.point, hit.normal, Color.black);
				// There is a wall where floor might be...
//				print("Hit wall after sweepin'");
				m_newPosition = m_wallPoint;
				m_isLedgeBlocked = true;
//				print ("m_wallPoint: " + m_wallPoint);
				print ("Wall in the way");
				return false;
			}
		}
			

		Vector3 rayDownNormal;

		// If ray hit the floor
		if (m_raycaster.doRaycast(out hit, m_rayDown.direction, m_rayDown.origin))
		{
			if (Vector3.Angle(hit.normal, Vector3.up) <= 45)
			{
				// Ray from the floor above ledge
//				Debug.DrawRay(hit.point, hit.normal * 5, Color.white);

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
						print ("Y difference: " + (rayDownNormal.y - hit.normal.y));
						Debug.DrawRay(hit.point, hit.normal * 3, Color.blue);

						/* If the angle between the two rays is different, 
						 * or the difference in Y between the two normals is larger than zero,
						 * then the first ray was inside an object */
						if (Vector3.Angle (rayDownNormal, hit.normal) > 0 && !(Mathf.Abs(hit.normal.y - rayDownNormal.y) > 0))
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
		m_newPosition = m_wallPoint;
		return false;
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

	public Vector3 getNewPosition()
	{
//		print ("Get new pos: " + m_newPosition);
		return m_newPosition;
	}

	public Vector3 getWallPoint() 
	{
//		print ("Get wall point: " + m_wallPoint);
		return m_wallPoint;
	}
}
