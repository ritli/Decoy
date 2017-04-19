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
        if(!m_Animator.GetCurrentAnimatorStateInfo(0).IsName("Close"))
            m_Animator.Play("Open");
        m_Animator.SetBool("IsOpen", true);

    }
    public override void deactivate()
    {
        m_IsActivated = false;
        if (!m_Animator.GetCurrentAnimatorStateInfo(0).IsName("Open"))
            m_Animator.Play("Close");
        m_Animator.SetBool("IsOpen", false);
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
