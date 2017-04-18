using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Timer))]
public class ActivationSequence : MonoBehaviour {

    [Tooltip("List of objects to be activated. The order of the list corresponds to the order in which the objects will be activated.")]
    public ActivationObject[] activations;
    [Tooltip("Decides the delay before the activation of each object. Index 0 in this list decides the delay before the activation of object 0 in the previous list.")]
    public float[] activationTimers;
    [Tooltip("Determine whether the list should loop or if the script should end when the list is done.")]
    public bool loopList = false;

    private Timer m_timer;
    private int m_objectIndex = 0;
    
    // Use this for initialization
    void Awake ()
    {
        m_timer = GetComponent<Timer>();
        try
        {
            m_timer.setTimeout(activationTimers[0]);
        }
        catch
        {
            Debug.LogError("List of activationtimers is empty.");
        }
        m_objectIndex = 0;
        m_timer.resetTimer();
	}
	
	// Update is called once per frame
	void Update ()
    {
        // Wait for each timeout
	    if (m_timer.isTimeUp())
        {
            activations[m_objectIndex].activate();

            if (m_objectIndex <= activations.Length - 1)
                m_objectIndex++;
            else
            {
                if (!loopList)
                    Destroy(this);
                else
                    m_objectIndex = 0;
            }


            m_timer.setTimeout(activationTimers[m_objectIndex]);
            m_timer.resetTimer();
        }
	}
}
