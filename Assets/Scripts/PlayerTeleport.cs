﻿using UnityEngine;
using System.Collections;

/* TODO:
 * Limit range separately for width and height
 * Teleport on surface and in the air
 * 
 * */

public class PlayerTeleport : MonoBehaviour {

    
    private LerpObject m_lerpObject;
    private TeleportationAdjuster m_teleportAdjuster;
    private GameObject m_instanceOfteleportTarget;
    private GameObject m_teleportPosition;
    private Raycast m_raycaster;
    private Camera m_playerCamera;
    private Rigidbody m_rigidbody;
    private RaycastHit m_rayHit = new RaycastHit();

    // Parametersssz yes
    public GameObject teleportTarget;
    public GameObject visualTarget;
    public float teleportDistance;

    void Start() {
        m_lerpObject = GetComponent<LerpObject>();
        m_raycaster = GetComponent<Raycast>();
        m_playerCamera = GetComponentInChildren<Camera>();
        m_rigidbody = GetComponent<Rigidbody>();
        m_instanceOfteleportTarget = (GameObject)Instantiate(teleportTarget, transform.position, Quaternion.Euler(0, 0, 0));
        m_instanceOfteleportTarget.transform.SetParent(this.transform);
        m_instanceOfteleportTarget.SetActive(false);
        m_raycaster.maxDistance = teleportDistance;
        m_teleportAdjuster = m_instanceOfteleportTarget.GetComponent<TeleportationAdjuster>();
        m_teleportPosition = Instantiate(visualTarget);
        m_teleportPosition.SetActive(false);
    }
	// Update is called once per frame
	void Update () {
        
        
        // Create visual indicator of where to teleport
        if(Input.GetButton("Teleport"))
        {
            m_instanceOfteleportTarget.SetActive(true);
            m_teleportPosition.SetActive(true);

            // Set the target to the point of collision if ray hit, otherwise target is at set distance from player
            if (m_raycaster.doRaycast(out m_rayHit))
            {
                m_instanceOfteleportTarget.transform.position = m_rayHit.point;
                Debug.DrawRay(m_rayHit.point, m_rayHit.normal * 10, Color.red);
            }
            else
            {
                m_instanceOfteleportTarget.transform.position = transform.position + m_playerCamera.transform.forward * teleportDistance;
            }
            Debug.DrawRay(m_instanceOfteleportTarget.transform.position, m_teleportAdjuster.getOffset() * 10);
            m_teleportPosition.transform.position = m_instanceOfteleportTarget.transform.position + m_teleportAdjuster.getOffset();
            //m_instanceOfteleportTarget.transform.position += m_teleportAdjuster.getOffset();

            //print(m_teleportAdjuster.getOffset());
        }

        // Move towards target when releasing button
	    if (Input.GetButtonUp("Teleport"))
        {
            m_lerpObject.beginLerp(m_instanceOfteleportTarget.transform.position);
            m_teleportAdjuster.clearCollisions();
            m_instanceOfteleportTarget.SetActive(false);
            m_teleportPosition.SetActive(false);
        }
	}

}
