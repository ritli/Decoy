using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndPlayerLocator : MonoBehaviour {

    public EndStarter m_EndStarter;
    private void Start()
    {
        if(GetComponentInParent<EndStarter>() != null)
            m_EndStarter = GetComponentInParent<EndStarter>();
    }
    private void OnTriggerEnter(Collider other)
    {
        m_EndStarter.m_IsplayerReady = true;
    }
    private void OnTriggerExit(Collider other)
    {
        m_EndStarter.m_IsplayerReady = false;
    }
}
