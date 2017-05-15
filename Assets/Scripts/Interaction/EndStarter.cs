using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndStarter : MonoBehaviour
{
    private BoxCollider m_Collider;
    public bool m_EndStarted = false;
    private PlayerTeleport m_PlayerTeleport;
    private ActivationSequence m_AS;

    // Use this for initialization
    void Start ()
    {
        m_Collider = GetComponent<BoxCollider>();
        m_PlayerTeleport = GameManager.GetPlayer().GetComponent<PlayerTeleport>();
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(!m_EndStarted)
        {
            //if player is teleporting into the collider, then start the end.
            if(m_PlayerTeleport.isTeleporting() &&  m_Collider.bounds.Contains(m_PlayerTeleport.TeleportingTo()))
            {
                m_EndStarted = true;
                m_PlayerTeleport.FinishTeleport();
                GameManager.GetPlayer().pausePlayer(true);
                GameManager.GetPlayer().disableGravity();
                Cursor.visible = false;
                PauseManager.GetInstance().DisablePause(true);
                
                m_AS.Init();
                enabled = false;

                //Add rest of end here, maybe An activationSequence

            }
        }
	}
}
