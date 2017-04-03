using UnityEngine;
using System.Collections;

/* TODO:
 * Limit range separately for width and height
 * Teleport on surface and in the air
 * 
 * */

public class PlayerTeleport : MonoBehaviour {

    
    private LerpObject m_lerpObject;
    private GameObject m_instanceOfteleportTarget;
    private Raycast m_raycaster;
    private Camera m_playerCamera;
    private Rigidbody m_rigidbody;
    private RaycastHit m_rayHit = new RaycastHit();

    // Parametersssz yes
    public GameObject teleportTarget;

    void Start() {
        m_lerpObject = GetComponent<LerpObject>();
        m_raycaster = GetComponent<Raycast>();
        m_playerCamera = GetComponentInChildren<Camera>();
        m_rigidbody = GetComponent<Rigidbody>();
        m_instanceOfteleportTarget = (GameObject)Instantiate(teleportTarget, transform.position, Quaternion.Euler(0, 0, 0));
        m_instanceOfteleportTarget.transform.SetParent(this.transform);
        m_instanceOfteleportTarget.SetActive(false);
    }
	// Update is called once per frame
	void Update () {
        
        
        // Create visual indicator of where to teleport
        if(Input.GetButton("Teleport"))
        {

            if (m_raycaster.doRaycast(out m_rayHit))
            {

                m_instanceOfteleportTarget.SetActive(true);
                m_instanceOfteleportTarget.transform.position = m_rayHit.point;
                
            }
            
        }

        // Teleport and remove indicator
	    if (Input.GetButtonUp("Teleport"))
        {
            m_lerpObject.beginLerp(m_rayHit.point);
            m_instanceOfteleportTarget.SetActive(false);
            //Destroy(m_instanceOfteleportTarget);
        }
	}

}
