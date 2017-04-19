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

    // Use this for initialization
    void Start () {
        m_Animator = GetComponent<Animator>();
        if(m_Animator == null)
        {
            Debug.LogError("No Animator found.");
        }
        //Sets the door open or closed
        m_Animator.SetBool("IsOpen", m_IsOpen);

        if(m_IsOpen)
            m_Animator.Play("OpenIdle");
        else
            m_Animator.Play("CloseIdle");

        //Warn the designers if they use an obsolete combination of variables.
        if (m_IsOpen && m_DisableAfterState == DoorStates.Open)
            Debug.LogWarning("Obsolete door: m_IsOpen is true and m_DisableAfterState is set to Open");
        else if (!m_IsOpen && m_DisableAfterState == DoorStates.Close)
            Debug.LogWarning("Obsolete door: m_IsOpen is false and m_DisableAfterState is set to Close");

        //if both m_IsOpen and m_DisableAfterState 
        //is true/open or false/close then the door wont react to player interction

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
        if (!m_DisableDoor)
        {
            m_IsOpen = true;
            m_Animator.SetBool("IsOpen", m_IsOpen);
            
            if (m_DisableAfterState == DoorStates.Open)
            {
                m_DisableDoor = true;
            }
        }
    }
    public override void deactivate()
    {
        if (!m_DisableDoor)
        {
            m_IsOpen = false;
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
        //this checks if we should be open or close
        if(m_SaveDoor && checkIndex <= index)
        {
            //if the door was set to be closed from the beginning, then the finished state is to be open
            if(!m_IsOpen)
            {
                print("Let the door be open.");
                m_Animator.Play(DoorStates.OpenIdle.ToString());
            }
            //if the door was set to be open from the begninning, then the finished state is to be closed
            else
            {
                print("Let the door be closed");
                m_Animator.Play(DoorStates.CloseIdle.ToString());
            }
            m_IsOpen = !m_IsOpen;
        }
    }
}
