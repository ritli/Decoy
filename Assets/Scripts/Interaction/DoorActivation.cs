using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorActivation : ActivationObject {

    public float rotationDegrees = 45.0f;
    public float rotationSpeed;
    public bool returnToOrigin;

    private bool m_isActive = false;
    private bool m_isRotating = false;
    private Quaternion m_targetRotation = new Quaternion();
    private Quaternion m_originRotation = new Quaternion();

    private Quaternion m_towardsRotation = new Quaternion();

    // Set initial rotations
    private void Awake()
    {
        m_isActive = false;
        m_isRotating = false;
        m_originRotation = transform.rotation;
        m_targetRotation = Quaternion.AngleAxis(rotationDegrees, new Vector3(0, 1, 0)) * transform.rotation;
    }

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        m_isActive = true;
        m_isRotating = true;
        m_towardsRotation = m_targetRotation;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        m_isActive = false;
        if (returnToOrigin)
        {
            m_towardsRotation = m_originRotation;
            m_isRotating = true;
        }     
        else
        {
            m_isRotating = false;
        }

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
            m_isActive = true;
            transform.rotation = m_targetRotation;
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

    private void Update()
    {
        if (m_isRotating)
            transform.rotation = Quaternion.RotateTowards(transform.rotation, m_towardsRotation, rotationSpeed * Time.deltaTime);
        if (transform.rotation == m_towardsRotation)
            m_isRotating = false;
    }
}
