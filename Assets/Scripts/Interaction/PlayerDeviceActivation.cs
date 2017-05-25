using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeviceActivation : ActivationObject {

    public bool m_value;

    public override void activate()
    {
        GameManager.GetPlayer().hasDevice(m_value);
        GameManager.GetPlayer().pausePlayer(true);
    }

    public override void deactivate()
    {
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
