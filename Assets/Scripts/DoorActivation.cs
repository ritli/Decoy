using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorActivation : ActivationObject {

    public float rotationDegrees = 45.0f;
    public float rotationSpeed;
    public bool returnToOrigin;

    private bool m_isActive = false;
    private bool m_isRotating = false;
    Quaternion m_targetRotation = new Quaternion();
    Quaternion m_originRotation = new Quaternion();

    // Set initial rotations
    private void Start()
    {
        m_originRotation = transform.rotation;
        m_targetRotation = Quaternion.AngleAxis(rotationDegrees, new Vector3(0, 1, 0)) * transform.rotation;
    }

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        m_isActive = true;
        m_isRotating = true;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        
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
            // Set to a finished state
        }

    }

    private void Update()
    {
        if (m_isRotating)
            transform.rotation = Quaternion.RotateTowards(transform.rotation, m_targetRotation, rotationSpeed * Time.deltaTime);
    }
}
