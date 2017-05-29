using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StopSpeedrunTimer : MonoBehaviour
{

    private SpeedrunTimer sprntmr;

	// Use this for initialization
	void Start ()
    {
        sprntmr = FindObjectOfType<SpeedrunTimer>();
	}
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == Tags.player)
        {
            sprntmr.stopTimer();
            //sprntmr.m_Text.enabled = true;
        }
    }
}
