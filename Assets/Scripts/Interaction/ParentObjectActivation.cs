using UnityEngine;
using System.Collections;

public class ParentObjectActivation : ActivationObject {

    public Transform objectToParent;
    public Transform parent;

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        objectToParent.parent = parent;
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
        objectToParent.parent = null;
    }

    // Check if the object is activated or not.
    public override bool isActivated()
    {
        return true;
    }

    protected override void checkActivationEvent(int index)
    {

    }

}
