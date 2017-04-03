using UnityEngine;
using System.Collections;

[ExecuteInEditMode]

public class FoVDrawer : MonoBehaviour {

    TurretBehaviour tb;
    Vector3 left, right;
    public float length;
    public float angle;
	// Use this for initialization
	void Start () {
        tb = GetComponent<TurretBehaviour>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        tb.fieldOfView = angle;

        left = (Quaternion.AngleAxis(-angle, Vector3.up) * Vector3.forward) * length;
        right = (Quaternion.AngleAxis(angle, Vector3.up) * Vector3.forward) * length;
        left = transform.rotation * left;
        right = transform.rotation * right;

        Debug.DrawLine(transform.position, left + transform.position, Color.red);
        Debug.DrawLine(transform.position, right + transform.position, Color.red);
	}
}
