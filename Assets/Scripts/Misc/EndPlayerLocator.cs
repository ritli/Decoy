using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndPlayerLocator : MonoBehaviour {

    private EndStarter m_EndStarter;
    private void Start()
    {
        if(GetComponentInParent<EndStarter>() != null)
            m_EndStarter = GetComponentInParent<EndStarter>();
    }
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == Tags.player)
        {
            m_EndStarter.m_IsplayerReady = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == Tags.player)
        {
            m_EndStarter.m_IsplayerReady = false;
        }
    }
}
