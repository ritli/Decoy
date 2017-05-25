using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioTrigger : MonoBehaviour {

    public FMODUnity.StudioEventEmitter[] m_emitter;

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag(Tags.player) && m_emitter.Length > 1)
        {
            for (int i = 0; i < m_emitter.Length; i++)
            {
                m_emitter[i].Play();

            }
        }
    }
}
