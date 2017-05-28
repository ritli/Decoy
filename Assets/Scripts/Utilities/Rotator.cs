using UnityEngine;
using System.Collections;

public class Rotator : MonoBehaviour {

    public float rotateSpeed;
    public Vector3 rotateDirection;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        transform.Rotate(rotateDirection, rotateSpeed);
	}
}
