using UnityEngine;
using System.Collections;

public class PlayerTeleport : MonoBehaviour {

    private LerpObject lerpObject;

    public Transform target;

    public GameObject spotlight;
    private Object m_instanceOfSpotlight;

	// Use this for initialization
	void Start () {
        lerpObject = GetComponent<LerpObject>();
	}
	
	// Update is called once per frame
	void Update () {

        // Create visual indicator of where to teleport
        if(Input.GetButtonDown("Fire2"))
        {
            m_instanceOfSpotlight = Instantiate(spotlight, target.transform.position, Quaternion.Euler(90 ,0, 0));
        }

        // Teleport and remove indicator
	    if (Input.GetButtonUp("Fire2"))
        {
            lerpObject.beginLerp();
            Destroy(m_instanceOfSpotlight);
        }
	}
}
