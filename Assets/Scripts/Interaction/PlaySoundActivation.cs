using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaySoundActivation : ActivationObject {

    [FMODUnity.EventRef]
    public string m_event;
    public bool m_oneshot;
    public bool m_attached;
    public GameObject target;
    public bool m_targetPlayer;
    public FMODUnity.StudioEventEmitter m_emitter;

    public override void activate()
    {
        if (m_oneshot)
        {
            if (m_targetPlayer)
            {
                target = GameManager.GetPlayer().gameObject;
            }

            if (m_attached)
            {
                FMODUnity.RuntimeManager.PlayOneShotAttached(m_event, target);
            }
            else
            {
                target = m_targetPlayer ? target : gameObject;
                FMODUnity.RuntimeManager.PlayOneShot(m_event, target.transform.position);
            }
        }

        else
        {
            print("Not implemented!");
        }
    }

    public override void deactivate()
    {
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
