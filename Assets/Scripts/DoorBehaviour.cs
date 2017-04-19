using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorBehaviour : ActivationObject{

    private Animator m_Animator;
    private bool m_IsActivated = false;
	// Use this for initialization
	void Start () {
        m_Animator = GetComponent<Animator>();
        if(m_Animator == null)
        {
            Debug.LogError("No Animator found.");
        }
        //m_Animator.Play("Open");

    }
	
	// Update is called once per frame
	void Update () {
		
	}
    public override void activate()
    {
        m_IsActivated = true;
        m_Animator.Play("Open");
        
    }
    public override void deactivate()
    {
        m_IsActivated = false;
        m_Animator.Play("Close");
        
    }
    public override bool isActivated()
    {
        return m_IsActivated;   
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }
}
