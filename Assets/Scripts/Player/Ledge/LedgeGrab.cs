using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeGrab : FindLedge {

	// Variables for nearby ledge detection
	private bool m_inTrigger = false;
	private bool m_canGrab = false;
	private bool m_roof = false;
	private Collider m_collider;
	private LedgeTele m_ledgeTele;


	[Header("Directional sensitivity")]
	[Tooltip("Value between [0, 180] where 0 is straight into the wall and 180 is straight away from the wall")]
	public float horizontal;
	[Tooltip("Value between [0, 90] where 0 is straight into the wall and 90 is straight up or down")]
	public float vertical;

	// Use this for initialization
	void Start () 
	{
		m_ledgeTele = GetComponent<LedgeTele>();
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
		if (m_inTrigger && m_collider != null && !m_ledgeTele.isTeleporting() && !m_roof)
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
			Vector3 notUsed = new Vector3 (0, 0, 0);
			Vector3 notUsed2 = new Vector3 (0, 0, 0);
			if (raySuccess)
				foundLedge = findLedge(hit, out notUsed, out notUsed2);

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
		if (other.transform.tag != Tags.player && m_collider != null) 
		{
			Vector3 normal = calcNormal ();
			float angle = Vector3.Angle (-Vector3.up, normal);
			if (angle < 45) 
			{
				m_roof = true;
			}
			//			Debug.DrawRay (m_collider.ClosestPointOnBounds(transform.position), normal * 3f, Color.red);
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
}
