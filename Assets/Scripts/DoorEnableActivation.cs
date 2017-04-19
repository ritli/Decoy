using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorEnableActivation : ActivationObject {

    private bool m_isActive = false;
    public DoorBehaviour[] doors;

    // Use this for initialization
    public override void activate()
    {
        foreach (DoorBehaviour door in doors)
        {
            if (door != null)
                print("temp_(Enable activation of door)");
        }
        m_isActive = true;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        foreach (DoorBehaviour door in doors)
        {
            if (door != null)
                print("temp_(Disable activation of door)");
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
