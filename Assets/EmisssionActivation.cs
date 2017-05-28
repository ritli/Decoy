using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmisssionActivation : ActivationObject {

    public float m_delay = 0;
    float m_timepassed = 0;

    public float m_rate;
    public ParticleSystem[] particlesystems; 

    public override void activate()
    {
        Invoke("SetEmission", m_delay);


    }

    public override void deactivate()   
    {
        m_rate = 0;

        Invoke("SetEmission", m_delay);
    }

    public override bool isActivated()
    {
        throw new NotImplementedException();
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }

    void SetEmission()
    {
        foreach(ParticleSystem p in particlesystems)
        {
           ParticleSystem.EmissionModule e = p.emission;

            e.rateOverTime = m_rate;
        }
    }
}
