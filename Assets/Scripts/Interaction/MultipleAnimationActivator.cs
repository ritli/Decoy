using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Timer), typeof(PlaySoundActivation))]
public class MultipleAnimationActivator : ActivationObject {

    public AnimationActivation[] animations;

    [Tooltip("Determines the delay between sound and animation.")]
    public float animationDelay = 0.0f;

    private bool m_isActive = false;

    // Privates relevant to playing of sound
    private Timer m_timer;
    private PlaySoundActivation m_soundPlayer;
    private bool m_animationInitiated = false;

    private void Awake()
    {
        m_timer = GetComponent<Timer>();
        if (m_timer == null)
            Debug.LogError("No timer found in MultipleAnimationActivation");
        m_timer.setTimeout(animationDelay);

        m_soundPlayer = GetComponent<PlaySoundActivation>();
        if (m_soundPlayer == null)
            Debug.LogError("No PlaySoundActivation found in MultipleAnimationActivation");
    }

    public override void activate()
    {
        m_isActive = true;
        m_animationInitiated = true;
        m_timer.resetTimer();
        m_soundPlayer.activate();
    }

    public override void deactivate()
    {
        m_isActive = false;

        foreach (AnimationActivation anim in animations)
            anim.deactivate();
    }

    public override bool isActivated()
    {
        return m_isActive;
    }

    protected override void checkActivationEvent(int index)
    {
        if (index <= checkIndex)
            deactivate();
    }

    private void Update()
    {
        // Run animations after the decided delay.
        if (m_timer.isTimeUp() && m_animationInitiated)
        {
            m_animationInitiated = false;

            foreach (AnimationActivation anim in animations)
                anim.activate();
        }
    }
}
