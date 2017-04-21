using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AreaInteractionTrigger : MonoBehaviour {

    public ActivationObject[] m_activationObjects;

    private Animator m_Animatior;



    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == Tags.player)
        {
            ActivateObjects(true);
        }

    }
    private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == Tags.player)
        {
            ActivateObjects(false);
        }
    }

    void ActivateObjects(bool active)
    {
        foreach(ActivationObject activationObject in m_activationObjects)
        {
            if (active)
            {
                activationObject.activate();
            }
            else
            {
                activationObject.deactivate();
            }
        }
    }

}
