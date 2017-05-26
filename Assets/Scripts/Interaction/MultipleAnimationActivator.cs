using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MultipleAnimationActivator : ActivationObject {

    public FlashbackFader[] faders;
    private bool m_isActive = false;
    [Tooltip("Set the animationdelay of all coupled flashbackfaders.")]
    public float animationDelay = 0.0f;

    // Set the animationdelay of all coupled faders.
    // Do so in start to avoid race conditions.
    private void Start()
    {
        foreach (FlashbackFader fader in faders)
            fader.setAnimationdelay(animationDelay);
    }

    public override void activate()
    {
        m_isActive = true;

        foreach (FlashbackFader fade in faders)
            fade.activate();
    }

    public override void deactivate()
    {
        m_isActive = false;

        foreach (FlashbackFader fade in faders)
            fade.deactivate();
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
}
