using UnityEngine;
using System.Collections;

public class ObjectEnableActivation : ActivationObject {

    public GameObject objectToEnable;
    public bool m_value;

    // Function to be called when activating the object, toggling on.
    public override void activate()
    {
        objectToEnable.SetActive(m_value);
    }

    // Function to be called when deactivating the objcet, toggling off.
    public override void deactivate()
    {
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
