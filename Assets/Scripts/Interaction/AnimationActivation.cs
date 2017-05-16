using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationActivation : ActivationObject {

    private Animator m_animator;
    private bool m_active = false;

    public bool playOnAwake = false;
    public string activatedState;
    public string deactivatedState;

	// Use this for initialization
	void Awake ()
    {
        m_animator = GetComponent<Animator>();
        if (m_animator == null)
            Debug.LogError("Found no animator");

        if (playOnAwake)
            m_animator.Play(activatedState);
	}

    public override void activate()
    {
        m_active = true;
        m_animator.Play(activatedState);
    }

    public override void deactivate()
    {
        m_active = true;
        m_animator.Play(deactivatedState);
    }

    public override bool isActivated()
    {
        return m_active;
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }
}
