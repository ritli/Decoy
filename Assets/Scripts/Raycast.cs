using UnityEngine;
using System.Collections;

public class Raycast : MonoBehaviour {

    public Transform raySource;
    public float maxDistance;

    private RaycastHit hit;

	// Use this for initialization
	void Start () {
    	
	}
	
	// Update is called once per frame
	void Update ()
    {

        //if (Physics.Raycast()) // Ray ray, out hit, float maxDistance, int layerMask
        doRaycast();
    }

    void doRaycast()
    {
        Ray ray = new Ray(raySource.position, raySource.forward);

        if (Physics.Raycast(ray, out hit, maxDistance, 1))
            Debug.DrawRay(ray.origin, ray.direction);
    }
}
