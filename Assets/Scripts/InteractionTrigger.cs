using UnityEngine;
using System.Collections;

public class InteractionTrigger : MonoBehaviour {

    public float activationDistance = 1.0f;
    public GameObject[] activationObjects;
    public bool toggle = false;

    private Transform m_playerTransform;
    private Raycast m_raycaster;
    private RaycastHit hit;

    public interface ActivationObject
    {
        // Function to be called when activating the object, toggling on.
        void activate();
        // Function to be called when deactivating the objcet, toggling off.
        void deactivate();
        // Check if the object is activated or not.
        bool isActivated();
    }

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
                    foreach (GameObject actObject in activationObjects)
                    {
                        ActivationObject objectActivation = actObject.GetComponent<ActivationObject>();
                        // Only activate the object if the object is an interface of type ActivationObject
                        if (objectActivation != null)
                        {
                            if (!toggle && !objectActivation.isActivated())
                            {
                                objectActivation.activate();
                            }
                            else if (toggle)
                            {
                                if (!objectActivation.isActivated())
                                    objectActivation.activate();
                                else
                                    objectActivation.deactivate();
                            }
                        }
                    }
                }
            }
        }
	}
}
