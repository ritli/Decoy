using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartSpeedrunTimer : MonoBehaviour {

    private SpeedrunTimer sprntmr;
    
	// Use this for initialization
	void Start ()
    {
        sprntmr = FindObjectOfType<SpeedrunTimer>();
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == Tags.player)
        {
            sprntmr.startTimer();
        }
    }
}
