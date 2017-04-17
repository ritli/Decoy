using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioTrigger : MonoBehaviour {

    public FMODUnity.EmitterRef m_emitter;

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag(Tags.player))
        {

        }

    }
}
