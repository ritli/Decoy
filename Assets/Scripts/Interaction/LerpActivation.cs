using UnityEngine;
using System.Collections;

public class LerpActivation : ActivationObject {

    public bool timed = false;
    public float m_time = 0;

    public Transform startPos, destPos;
    public float speed;
    [Tooltip("Determines whether the object returns to its original position when toggled off.")]
    public bool returnToStart = false;
    [Tooltip("Determines how close the position and target position has to be before the lerp ends.")]
    public float threshold = 0.5f;
    public bool lerpLocal;
    [Header("Lerp to the given GameObject name.")]
    public bool findLerpdestByName;
    public string searchName;

    private Vector3 m_lerpAim;
    private bool m_isActive = false;
    private bool m_isLerping = false;

    private float m_timeElapsed = 0;

    private void Awake()
    {
        if (findLerpdestByName)
        {
            GameObject foundObject = GameObject.Find(searchName);
            destPos = foundObject.transform;
        }
        else if (destPos == null)
            Debug.LogError("Destpos is null and no object is being searched for instead.");
    }

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        m_lerpAim = destPos.position;
        m_isLerping = true;
        m_isActive = true;
        m_timeElapsed = 0;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        m_isActive = false;
        if (returnToStart)
        {
            m_timeElapsed = 0;
            m_lerpAim = startPos.transform.position;
            m_isLerping = true;
        }
        else
            m_isLerping = false;
        
    }

    // Check if the object is activated or not.
    public override bool isActivated()
    {
        return m_isActive;
    }

    protected override void checkActivationEvent(int index)
    {
        if (checkIndex <= index)
        {
            transform.position = destPos.position;
            m_isActive = true;
        }

    }

    // Subscribe and desubscribe
    void OnEnable()
    {
        // Subscribe OnActivationReset to the event
        GameManager.OnActivationReset += checkActivationEvent;
    }
    void OnDisable()
    {
        // Desubscribe OnActivationReset to the event
        GameManager.OnActivationReset -= checkActivationEvent;
    }

    // Update is called once per frame
    void Update ()
    {
	    if (m_isLerping)
        {
            if (timed)
            {
                if (lerpLocal)
                    transform.localPosition = Vector3.Lerp(transform.localPosition, transform.localToWorldMatrix * destPos.position, m_timeElapsed / m_time);
                else
                    transform.position = Vector3.Lerp(transform.position, destPos.position, m_timeElapsed / m_time);

                m_timeElapsed += Time.deltaTime;
            }
            else
            {
                if (lerpLocal)
                    transform.localPosition = Vector3.Lerp(transform.localPosition, transform.localToWorldMatrix * destPos.position, speed * Time.deltaTime);
                else
                    transform.position = Vector3.Lerp(transform.position, destPos.position, speed * Time.deltaTime);
            }

        }

        if (Vector3.Distance(transform.position, m_lerpAim) <= threshold && !timed)
            m_isLerping = false;
	}
}
