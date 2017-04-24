using System.Collections;
using System.Collections.Generic;
using UnityStandardAssets.CrossPlatformInput;
using UnityEngine;

public class LedgeDetectionGrab : MonoBehaviour {


	private LedgeDetection m_ledgeDetect;
	private Raycast m_raycaster;
	private RaycastHit m_hit = new RaycastHit();
	private bool m_canGrab = false;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);
	private bool m_inTrigger = false;
	private Collider m_collider;

	[Tooltip("Determines the angle you need to grab the ledge while looking at the wall")]
	public float directionSensitivity = 0f;

	void Start() 
	{
		m_ledgeDetect = GetComponent<LedgeDetection> ();	
		m_raycaster = GetComponent<Raycast> ();
	}

	void Update() 
	{
		if (m_inTrigger) {
			Vector3 direction = new Vector3 (0, 0, 0);
			direction = m_collider.ClosestPointOnBounds (transform.position);
			direction = transform.position - direction;
			Vector3 cameraDirection = Camera.main.transform.forward;			
			
			Debug.DrawRay (transform.position, direction * 20, Color.yellow);
			
			bool angleOk = Vector3.Angle (cameraDirection, direction) > 180 - directionSensitivity ? true : false;
			bool isWall = Vector3.Angle (direction, Vector3.up) > 45 ? true : false;
			bool raySuccess = m_raycaster.doRaycast (out m_hit, -direction, transform.position);
			bool foundLedge = m_ledgeDetect.findLedge (m_hit);
			
//			print ("angleOk: " + angleOk);
			
			if (angleOk && foundLedge) 
			{	
				m_canGrab = true;
				m_newPosition = m_ledgeDetect.getNewPosition ();
			} else 
			{
				m_canGrab = false;
			}
			//m_collider.GetComponent<MeshRenderer> ().enabled = !m_canGrab;

//			print ("ledgeDetectionGrab: " + m_canGrab);
		}
	}

	void OnTriggerEnter(Collider other) 
	{
		if (other.transform.tag != Tags.noGrab) 
		{
			m_inTrigger = true;	
			m_collider = other;
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

	public Vector3 getNewPosition() 
	{
		return m_newPosition;
	}

}
