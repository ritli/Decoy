using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorBehaviour : ActivationObject{

    private Animator m_Animator;

	// Use this for initialization
	void Start () {
        m_Animator = GetComponent<Animator>();
        if(m_Animator == null)
        {
            Debug.LogError("No Animator found.");
        }
        m_Animator.Play("Open");

    }
	
	// Update is called once per frame
	void Update () {
		
	}
    public override void activate()
    {
        m_Animator.Play("Open");
        throw new NotImplementedException();
    }
    public override void deactivate()
    {
        m_Animator.Play("Close");
        throw new NotImplementedException();
    }
    public override bool isActivated()
    {
        throw new NotImplementedException();
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }
}
