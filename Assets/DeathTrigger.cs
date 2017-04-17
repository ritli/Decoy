using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathTrigger : MonoBehaviour {



	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerController>())
        {
            IKillable killable = GameManager.GetPlayer();
            killable.Kill();
        }
    }
}
