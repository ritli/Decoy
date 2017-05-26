﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerTeleportAudio : MonoBehaviour {

    public FMODUnity.StudioEventEmitter m_emitter;
    PlayerTeleport m_teleport;
    BlinkState m_blinkState;
    BlinkState m_lastState;
    public bool m_FirstBlink = true;
    bool m_eventPlayed = false;

    void Start()
    {
        m_FirstBlink = true;
        m_teleport = GetComponent<PlayerTeleport>();
    }

    void GetTeleportState()
    {
        m_blinkState = m_teleport.GetBlinkState();
        
    }

	void Update () {
        GetTeleportState();

        switch (m_blinkState)
        {
            case BlinkState.nah:
                if (m_lastState.Equals(BlinkState.aiming))
                {
                    m_emitter.SetParameter("BlinkUsage", 2f);
                }
                break;
            case BlinkState.aiming:
                m_emitter.SetParameter("BlinkUsage", 0f);
                if (!m_emitter.IsPlaying())
                {
                    m_emitter.Play();
                }

                break;
            case BlinkState.blinking:
                if(m_FirstBlink)
                {
                    m_FirstBlink = false;
                    m_emitter.SetParameter("FirstBlink", 1);
                }
                else
                {
                    m_emitter.SetParameter("FirstBlink", 0);
                }

                m_emitter.SetParameter("BlinkUsage", 0.5f);
                break;
            default:
                break;
        }

        m_lastState = m_blinkState;
    }
}
