using UnityEngine;
using System.Collections;

public class ParentObjectActivation : ActivationObject {

    public Transform objectToParent;
    public Transform parent;

    [Tooltip("Get the parent by name instead of public transform.")]
    public bool getByName;
    public string parentName;
    [Tooltip("Translate the parented object to the parents transform space.")]
    public bool translateToLocal;

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        if (!getByName)
        {
            objectToParent.parent = parent;
        }
        else
        {
            GameObject foundParent = GameObject.Find(parentName);
            // Set parent and translate to local position
            objectToParent.SetParent(foundParent.transform, translateToLocal);
        }
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
