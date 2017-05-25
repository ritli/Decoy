﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeviceActivation : ActivationObject {

    public bool m_value;
    public Transform lookatTransform;
    public Vector3 lookOffset = Vector3.zero;
    public float lookSpeed = 200.0f;

    public override void activate()
    {
        GameManager.GetPlayer().hasDevice(m_value);

        if (lookatTransform != null)
            GameManager.GetPlayer().forceLookat(lookatTransform.position + lookOffset, lookSpeed);
    }

    public override void deactivate()
    {
        GameManager.GetPlayer().stopForcelook();
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
