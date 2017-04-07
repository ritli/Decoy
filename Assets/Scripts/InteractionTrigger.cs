using UnityEngine;
using System.Collections;

public class InteractionTrigger : MonoBehaviour {

    public float activationDistance = 1.0f;
    public GameObject[] activationObjects;
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
                    foreach (GameObject gameObject in activationObjects)
                    {

                    }
                }
            }
        }
	}
}
