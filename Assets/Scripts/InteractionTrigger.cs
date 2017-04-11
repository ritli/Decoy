using UnityEngine;
using System.Collections;

// Abstract class implemented by objects which are to be activated by this kind of object.
public abstract class ActivationObject : MonoBehaviour
{
    [Header("Indicates corresponding checkpoint.")]
    public int checkIndex;
    // Function to be called when activating the object, toggling on.
    abstract public void activate();
    // Function to be called when deactivating the objcet, toggling off.
    abstract public void deactivate();
    // Check if the object is activated or not.
    abstract public bool isActivated();
    // Function which should be subscribed to an eventrigger.
    abstract protected void checkActivationEvent(int index);
}

public class InteractionTrigger : MonoBehaviour {

    // USED FOR TESTING EVENTS
    //public delegate void ClickAction(int index);
    //public static event ClickAction OnClicked;

    public float activationDistance = 1.0f;
    public ActivationObject[] activationObjects;
    public bool toggle = false;

    private Transform m_playerTransform;
    private Raycast m_raycaster;
    private RaycastHit hit;

	// Use this for initialization
	void Start ()
    {
        m_raycaster = GetComponent<Raycast>();
        m_playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        m_raycaster.setDistance(activationDistance);
        m_raycaster.raySource = m_playerTransform.GetChild(0); // Get the transform of the players camera.
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if (m_raycaster.doRaycast(out hit))
        {
            if (hit.transform.tag == "Button")
            {
                Debug.DrawLine(m_playerTransform.position, hit.point, Color.green);
                if (Input.GetButtonDown("Activate"))
                {
                    foreach (ActivationObject actObject in activationObjects)
                    {
                        // Only activate the object if the object is an interface of type ActivationObject
                        if (actObject != null)
                        {
                            //OnClicked(0);
                            if (!toggle && !actObject.isActivated())
                            {
                                actObject.activate();
                            }
                            else if (toggle)
                            {

                                if (!actObject.isActivated())
                                    actObject.activate();
                                else
                                    actObject.deactivate();
                            }
                        }
                    }
                }
            }
        }
	}
}
