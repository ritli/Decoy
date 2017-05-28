using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmitterKill : MonoBehaviour {

	void OnEnable() {
        KillAll();

        GetComponent<FMODUnity.StudioEventEmitter>().Play();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.I))
        {
            KillAll();
        }
    }

    void KillAll()
    {
        FMODUnity.RuntimeManager.GetBus("bus:/Master").stopAllEvents(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);

        /*
        FMODUnity.StudioEventEmitter[] emitters = FindObjectsOfType<FMODUnity.StudioEventEmitter>();

        foreach(FMODUnity.StudioEventEmitter e in emitters)
        {
            e.Stop();
        }
        */
    }


}
