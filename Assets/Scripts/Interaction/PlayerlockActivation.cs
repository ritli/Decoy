using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerlockActivation : ActivationObject {


    public override void activate()
    {
        print(name + "Triggered player activate");
        GameManager.GetPlayer().lockPlayer = true;
    }

    public override void deactivate()
    {
        GameManager.GetPlayer().lockPlayer = false;
    }

    // Is the player not locked
    public override bool isActivated()
    {
        return GameManager.GetPlayer().lockPlayer;
    }

    // If this activation is behind the gotten checkpoint, disable playerlock ( deactivate() )
    protected override void checkActivationEvent(int index)
    {
        if (checkIndex <= index)
        {
            deactivate();
        }
    }
}
