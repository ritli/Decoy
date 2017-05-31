using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyActivation : ActivationObject {

    public bool targetIsParent = true;

    public override void activate()
    {

        Destroy((targetIsParent ? transform.parent.gameObject : gameObject));
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
