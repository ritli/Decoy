using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorEnableActivation : ActivationObject {

    private bool m_isActive = false;
    [Tooltip("List of doors to be enabled or disabled by this object's activate/deactivate.")]
    public DoorBehaviour[] doors;

    // Use this for initialization
    public override void activate()
    {
        foreach (DoorBehaviour door in doors)
        {
            if (door != null)
                door.setDoorEnable(true);
        }
        m_isActive = true;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        foreach (DoorBehaviour door in doors)
        {
            if (door != null)
                door.setDoorEnable(false);
        }
        m_isActive = false;
    }

    // Check if the object is activated or not.
    public override bool isActivated()
    {
        return m_isActive;
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

    protected override void checkActivationEvent(int index)
    {
        if (checkIndex <= index)
        {
            activate();
        }
    }
}
