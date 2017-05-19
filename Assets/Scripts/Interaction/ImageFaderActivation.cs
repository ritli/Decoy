using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageFaderActivation : ActivationObject
{
    public bool m_newState;
    
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
    public override void activate()
    {
        ImageFader.instance.SetVisible(m_newState);
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
