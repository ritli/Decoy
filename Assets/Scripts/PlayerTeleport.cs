using UnityEngine;
using System.Collections;

public class PlayerTeleport : MonoBehaviour {

    private LerpObject m_lerpObject;

    public Transform target;

    public GameObject spotlight;
    private Object m_instanceOfSpotlight;
    private Raycast m_raycaster;
    private Camera m_playerCamera;
    //private Caps
    private Rigidbody m_rigidbody;

	// Use this for initialization
	void Start () {
        m_lerpObject = GetComponent<LerpObject>();
        m_raycaster = GetComponent<Raycast>();
        m_playerCamera = GetComponentInChildren<Camera>();
        m_rigidbody = GetComponent<Rigidbody>();
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
            // Check for collision with raycast.
            RaycastHit hit = new RaycastHit();
            if (m_raycaster.doRaycast(out hit))
            {
                m_lerpObject.beginLerp(hit.point);
            }

           // m_lerpObject.beginLerp();
            Destroy(m_instanceOfSpotlight);
        }
	}

}
