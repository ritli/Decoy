using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LayerswitchActivation : ActivationObject {

    public GameObject layerObject;
    public int activationLayer;
    public int deactivationLayer;

    private bool isActive = false;

    private void Awake()
    {
        if (layerObject == null)
            Debug.LogError("No object set in LayerswitchActivation");
    }

    public override void activate()
    {
        isActive = true;
        layerObject.layer = activationLayer;
    }

    public override void deactivate()
    {
        isActive = false;
        layerObject.layer = deactivationLayer;
    }

    public override bool isActivated()
    {
        return isActive;
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }
}
