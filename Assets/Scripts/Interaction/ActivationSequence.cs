﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public struct ActivationEvent
{
    public string eventName;
    public ActivationObject activationObject;
    public bool setState;
    public float delay;
}

public enum TriggerType
{
    OnAwake, OnTriggerEnter, OnTriggerExit
}

[RequireComponent(typeof(Timer))][Serializable]
public class ActivationSequence : MonoBehaviour {

    [Tooltip("Determine whether the list should loop or if the script should end when the list is done.")]
    public bool loopList = false;

    [Tooltip("List of events that should occurr. Object: the object affected; setState: If the object should be activated or deactivated; delay: Determine the time in seconds before the event is executed.")]
    public ActivationEvent[] activations;

    private Timer m_timer;
    private int m_objectIndex = 0;
    
    public TriggerType m_triggerType;
    public string m_triggererTag;
    bool m_activated = false;

    // Use this for initialization
    void Awake ()
    {
        m_timer = GetComponent<Timer>();

        CheckActivation(TriggerType.OnAwake);
    }

    void Init()
    {
        if (!m_activated)
        {
            try
            {
                m_timer.setTimeout(activations[0].delay);
            }
            catch
            {
                Debug.LogError("List of activationtimers is empty.");
            }

            m_objectIndex = 0;
            m_timer.resetTimer();

            m_activated = true;
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag(m_triggererTag))
        {
            CheckActivation(TriggerType.OnTriggerEnter);
        }
    }
    void OnTriggerExit(Collider col)
    {
        if (col.CompareTag(m_triggererTag))
        {
            CheckActivation(TriggerType.OnTriggerExit);
        }
    }


    void CheckActivation(TriggerType type)
    {
        if (type.Equals(m_triggerType))
        {
            Init();
        }
        
    }

    // Update is called once per frame
    void Update ()
    {
        //If sequence has been activated
        if (m_activated)
        {
            // Wait for each timeout
	        if (m_timer.isTimeUp() && activations[m_objectIndex].activationObject != null)
            {
                // Activate or deactivate the object based on the setState variable.
                if (activations[m_objectIndex].setState)
                    activations[m_objectIndex].activationObject.activate();
                else
                    activations[m_objectIndex].activationObject.deactivate();

                // Check the list of events has come to an end or not.
                if (m_objectIndex < activations.Length - 1)
                    m_objectIndex++;
                else
                {
                    // Check looplist to determine if the list should loop or if the sequence is finished.
                    if (!loopList)
                        Destroy(gameObject);
                    else
                        m_objectIndex = 0;
                }

                // Set delay for the next activation in the sequence
                m_timer.setTimeout(activations[m_objectIndex].delay);
                m_timer.resetTimer();
            }
        }
    }
}
