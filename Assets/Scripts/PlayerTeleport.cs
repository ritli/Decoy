using UnityEngine;
using System.Collections;

public class PlayerTeleport : MonoBehaviour {

    public float teleportDistance;
    private LerpObject lerpObject;

	// Use this for initialization
	void Start () {
        lerpObject = GetComponent<LerpObject>();

	}
	
	// Update is called once per frame
	void Update () {
	    if (Input.GetButtonDown("Fire2"))
        {


            lerpObject.beginLerp();
            //Quaternion rotation = transform.rotation;
            //Vector3 direction = rotation.eulerAngles.normalized;
            //direction *= teleportDistance;
            //transform.position += direction;
        }
	}
}
