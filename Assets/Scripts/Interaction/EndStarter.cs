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
    public GameObject endDecoy;

    public bool m_IsplayerReady = false;

    private FMODUnity.StudioEventEmitter emitter;

    // Use this for initialization
    void Start ()
    {

        emitter = GameObject.Find("S5_Music_Emitter").GetComponent<FMODUnity.StudioEventEmitter>();
        m_AS = GetComponentInChildren<ActivationSequence>();
        m_Collider = GetComponent<BoxCollider>();

        m_PlayerTeleport = GameManager.GetPlayer().GetComponent<PlayerTeleport>();
        if(m_PlayerTeleport == null)
        {
            print("playerTeleport null");
        }
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(!m_EndStarted && m_IsplayerReady)
        {
            //if player is teleporting into the collider, then start the end.
            if(m_PlayerTeleport.isTeleporting() &&  m_Collider.bounds.Contains(m_PlayerTeleport.TeleportingTo()))
            {
                
                m_EndStarted = true;
                emitter.SetParameter("S5_ToEnd", 1);
                m_PlayerTeleport.FinishTeleport();
                GameManager.GetPlayer().pausePlayer(true);
                GameManager.GetPlayer().GetComponentInChildren<Animator>().speed = 0;
                GameManager.GetPlayer().disableGravity();
                Destroy(GameManager.GetDecoy().gameObject);
                GameManager.GetPlayer().StopBob();
                Cursor.visible = false;
                PauseManager.GetInstance().DisablePause(true);
                endDecoy.transform.position = m_PlayerTeleport.TeleportingTo();
                endDecoy.transform.rotation = new Quaternion(0, GameManager.GetPlayer().transform.rotation.y, 0, endDecoy.transform.rotation.w);
                m_AS.Init();
                

                enabled = false;

                //Add rest of end here, maybe An activationSequence

            }
        }
	}
}
