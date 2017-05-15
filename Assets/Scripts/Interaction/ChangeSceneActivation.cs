using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeSceneActivation : ActivationObject
{
    public SceneLoader.Scenes m_toLoad;


    public override void activate()
    {
        SceneLoader.UnloadAll();    
        SceneLoader.LoadSceneSync(m_toLoad);
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
