using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeDetectionGrab : MonoBehaviour {

	void OnTriggerEnter(Collider other) 
	{
		Vector3 direction = new Vector3 (0, 0, 0);
		direction = other.ClosestPointOnBounds (transform.position);
		direction = transform.position - direction;
		//print(Vector3.Angle(direction, Vector3.up));
		Debug.DrawRay (transform.position, direction * 20, Color.yellow);
	}

}
