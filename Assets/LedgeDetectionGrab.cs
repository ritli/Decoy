using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeDetectionGrab : MonoBehaviour {


	private LedgeDetection m_ledgeDetect;
	private Raycast m_raycaster;
	private RaycastHit m_hit = new RaycastHit();

	[Tooltip("Determines the angle you need to grab the ledge while looking at the wall")]
	public float directionSensitivity = 0f;

	void Start() 
	{
		m_ledgeDetect = GetComponent<LedgeDetection> ();	
		m_raycaster = GetComponent<Raycast> ();
	}

	void OnTriggerStay(Collider other) 
	{
		Vector3 direction = new Vector3 (0, 0, 0);
		direction = other.ClosestPointOnBounds (transform.position);
		direction = transform.position - direction;
		Vector3 cameraDirection = Camera.main.transform.forward;

//		print("Camera and wall difference: " + Vector3.Angle(cameraDirection, direction));



		if (Vector3.Angle(cameraDirection, direction) > 180 - directionSensitivity) 
		{
			if (Vector3.Angle (direction, Vector3.up) > 45) 
			{
				if (m_raycaster.doRaycast (out m_hit, -direction, transform.position)) 
				{
					if (m_ledgeDetect.findLedge (m_hit)) 
					{
						other.GetComponent<MeshRenderer> ().enabled = false;
						if (Input.GetButton("Jump"))
						{
							transform.position = Vector3.MoveTowards (transform.position, m_ledgeDetect.getNewPosition (), 2);
						}
					}
				}
			}
		}

		Debug.DrawRay (transform.position, direction * 20, Color.yellow);
	}

	void OnTriggerExit(Collider other) 
	{
		other.GetComponent<MeshRenderer> ().enabled = true;	
	}

}
