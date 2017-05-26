using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmitterKill : MonoBehaviour {

	void Start () {
        KillAll();

        GetComponent<FMODUnity.StudioEventEmitter>().Play();

        print("ALL SOUNDS KILLED");
    }

    void KillAll()
    {
        FMODUnity.StudioEventEmitter[] emitters = FindObjectsOfType<FMODUnity.StudioEventEmitter>();

        foreach(FMODUnity.StudioEventEmitter e in emitters)
        {
            e.Stop();
        }
    }


}
