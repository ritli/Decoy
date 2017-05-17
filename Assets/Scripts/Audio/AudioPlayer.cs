using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioPlayer : MonoBehaviour {

    [FMODUnity.EventRef]
    public string[] m_events;
    public FMODUnity.StudioEventEmitter m_emitter;

	void Awake () {
		if (m_emitter == null)
        {
            if (GetComponent<FMODUnity.StudioEventEmitter>())
            {
                m_emitter = GetComponent<FMODUnity.StudioEventEmitter>();
            }
            else
            {
                Debug.LogError("There is no emitter specified or attached to this object.");
            }
        }
	}

    public void StopEvent(int index)
    {
        m_emitter.Stop();
    }

    public void PlayEvent(int index, bool oneshot)
    {
        PlaySound(index, oneshot);
    }

    public void PlayEventTimed(int index, int count, float time, bool oneShot)
    {
        StartCoroutine(PlaySoundTimed(index, count, time, oneShot));
    }

    void PlaySound(int index, bool oneShot)
    {
        m_emitter.Event = m_events[index].ToString();

        if (oneShot)
        {
            FMODUnity.RuntimeManager.PlayOneShot(m_events[index], transform.position);
        }
        else
        {
            m_emitter.Play();
        }
    }

    public void PlaySoundAtPosition(int index, bool oneShot, Vector3 pos)
    {
        m_emitter.Event = m_events[index].ToString();

        if (oneShot)
        {
            FMODUnity.RuntimeManager.PlayOneShot(m_events[index], pos);
        }
        else
        {
            m_emitter.Play();
        }
    }

    IEnumerator PlaySoundTimed(int index, int count, float time, bool oneshot)
    {
        for (int i = 0; i < count; i++)
        {
            PlaySound(index, oneshot);
            yield return new WaitForSeconds(time / count);
            
        }
    }
}
