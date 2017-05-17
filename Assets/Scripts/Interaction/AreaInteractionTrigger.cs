using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent (typeof(BoxCollider))]
public class AreaInteractionTrigger : MonoBehaviour {

    public ActivationObject[] m_activationObjects;

    public bool m_triggerOnce = false;
    public bool deactivateOnExit = true;

    private Animator m_Animatior;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == Tags.player)
        {
            ActivateObjects(true);
        }

        if (m_triggerOnce)
        {
            GetComponent<Collider2D>().enabled = false;
        }

    }
    private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == Tags.player && deactivateOnExit)
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
