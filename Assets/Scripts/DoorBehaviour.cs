using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorBehaviour : ActivationObject{

    public enum DoorStates {None, Open, OpenIdle, Close,CloseIdle};

    public bool m_SaveDoor = false;
    public bool m_DisableDoor = false;
    public bool m_IsOpen = false;
    public DoorStates m_DisableAfterState;

    private Animator m_Animator;
    private DoorStates m_initialState;

    public Color m_LockedColor;
    public Color m_UnlockedColor;
    private Light[] lockLights;

    // Use this for initialization
    void Start () {

        lockLights = GetComponentsInChildren<Light>();

        m_Animator = GetComponent<Animator>();

        if (m_Animator == null)
        {
            Debug.LogError("No Animator found.");
        }

        m_Animator.SetBool("IsOpen", m_IsOpen);

        //Set door to finished state if checkpoint was reached.
        if (m_initialState != DoorStates.None)
        {
            Debug.Log("Setting saved state..");
            m_Animator.Play(m_initialState.ToString());
        }
        else
        {
            //Set door to configured state because either no save or not enough progress on map.
            if (m_IsOpen)
                m_Animator.Play("OpenIdle");
            else
                m_Animator.Play("CloseIdle");
        }

        //Warn the designers if they use an obsolete combination of variables.
        if (m_IsOpen && m_DisableAfterState == DoorStates.Open)
            Debug.LogWarning("Obsolete door: m_IsOpen is true and m_DisableAfterState is set to Open");
        else if (!m_IsOpen && m_DisableAfterState == DoorStates.Close)
            Debug.LogWarning("Obsolete door: m_IsOpen is false and m_DisableAfterState is set to Close");

        //if both m_IsOpen and m_DisableAfterState 
        //is true/open or false/close then the door wont react to player interction


        foreach (Light light in lockLights)
        {
            if (m_DisableDoor)
            {
                light.color = m_LockedColor;
            }
            else
            {
                light.color = m_UnlockedColor;
            }
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
    
    public override void activate()
    {
        m_IsOpen = true;
        if (!m_DisableDoor)
        {
            m_Animator.SetBool("IsOpen", m_IsOpen);
            
            if (m_DisableAfterState == DoorStates.Open)
            {
                m_DisableDoor = true;
            }
        }
    }
    public override void deactivate()
    {
        m_IsOpen = false;
        if (!m_DisableDoor)
        {
            m_Animator.SetBool("IsOpen", m_IsOpen);

            if (m_DisableAfterState == DoorStates.Close)
            {
                m_DisableDoor = true;
            }
        }
    }
    public override bool isActivated()
    {
        return m_IsOpen;
    }

    protected override void checkActivationEvent(int index)
    {
        print("Save check performed.");
        //this checks if we should be open or close
        if(m_SaveDoor && checkIndex <= index)
        {
            //if the door was set to be closed from the beginning, then the finished state is to be open
            if(!m_IsOpen)
            {
                print("Let the door be open.");
                m_initialState = DoorStates.OpenIdle;

            }
            //if the door was set to be open from the begninning, then the finished state is to be closed
            else
            {
                print("Let the door be closed");
                m_initialState = DoorStates.CloseIdle;
            }
            m_IsOpen = !m_IsOpen;
        }
        m_initialState = DoorStates.None;
    }

    // Enable or disable the door from opening.
    public void setDoorEnable(bool enable)
    {
        if (enable)
        {
            m_DisableDoor = false;
            // If the player is in the doors collider while enabling, also activate the door.
            if (m_IsOpen)
                activate();
        }
        else
        {
            m_DisableDoor = true;
            deactivate();
        }
    }
}
