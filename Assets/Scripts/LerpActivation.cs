using UnityEngine;
using System.Collections;

public class LerpActivation : MonoBehaviour, InteractionTrigger.ActivationObject {

    public Transform startPos, destPos;
    public float deltaTime;
    [Header("Determine if the object returns or stops.")]
    public bool returnToStart = false;
    public float threshold = 0.5f;

    private Vector3 m_lerpAim;
    private bool m_isActive = false;
    private bool m_isLerping = false;

    // Function to be called when activating the object, toggling on.
    public void activate()
    {
        m_lerpAim = destPos.transform.position;
        m_isLerping = true;
        m_isActive = true;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public void deactivate()
    {
        m_isActive = false;
        if (returnToStart)
            m_lerpAim = startPos.transform.position;
        else
            m_isLerping = false;
        
    }

    // Check if the object is activated or not.
    public bool isActivated()
    {
        return m_isActive;
    }

    // Update is called once per frame
    void Update ()
    {
	    if (m_isLerping)
        {
            transform.position = Vector3.Lerp(transform.position, m_lerpAim, deltaTime);
        }

        if (Vector3.Distance(transform.position, m_lerpAim) <= threshold)
            m_isLerping = false;
	}

    public void setFinished()
    {
        transform.position = destPos.transform.position;
    }
}
