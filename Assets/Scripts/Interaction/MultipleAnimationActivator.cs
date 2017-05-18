using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MultipleAnimationActivator : ActivationObject {

    public AnimationActivation[] animations;

    private bool m_isActive = false;

    public override void activate()
    {
        m_isActive = true;

        foreach (AnimationActivation anim in animations)
            anim.activate();
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
}
