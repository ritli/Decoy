using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour {

    int fieldOfView = 10;
    LookAt m_LookAt;
    TurretFirepower m_TurretFirepower;


    void OnTriggetEnter(Collider other) 
    {
        if (other.tag == Tags.player)
        {

        }
    }
    void OnTriggerExit(Collider other)
    {
        if(other.tag == Tags.player)
        { 
        }
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
