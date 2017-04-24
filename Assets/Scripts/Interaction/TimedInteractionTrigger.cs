﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Timer))]
public class TimedInteractionTrigger : ActivationTrigger {

    [Tooltip("Determines the amount of seconds that the objects in the list are activated.")]
    public float timeUp = 1.0f;

    private Timer m_timer;
    private bool isPushed = false;

    // Update is called once per frame
    protected override void buttonHit()
    {
        foreach (ActivationObject actObject in activationObjects)
        {
            if (actObject != null)
                actObject.activate();
        }
        m_timer.resetTimer();
        isPushed = true;
    }

    protected override void Start()
    {
        base.Start();
        m_timer = GetComponent<Timer>();
        m_timer.setTimeout(timeUp);
    }

    protected override void Update()
    {
        // Run default update for button detection.
        base.Update();

        // Deactivate all listed objects when the time is up.
        if (m_timer.isTimeUp() && isPushed)
        {
            foreach (ActivationObject actObject in activationObjects)
            {
                if (actObject != null)
                    actObject.deactivate();
            }
            isPushed = false;
        }
    }
}
