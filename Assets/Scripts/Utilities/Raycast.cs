using UnityEngine;
using System.Collections;

public class Raycast : MonoBehaviour {

    public Transform raySource;
    public float maxDistance;

    private RaycastHit hit;
    public LayerMask layerMask = 0;

    void Start()
    {
        if(raySource == null)
        {
            raySource = GetComponent<Transform>();
        }
        // Create the layermask for the layers on which the ray should be casted.
        /*for (int i = 0; i < castingLayers.Length; i++)
        {
            layerMask += (int)Mathf.Pow(2, castingLayers[i]);
        }
        */
    }


    //void Update()
    //{
    //    RaycastHit tempHit = new RaycastHit();
    //    if (doRaycast(out tempHit))
    //        print(tempHit.transform.gameObject.name);
    //} 

    public void setDistance(float distance)
    {
        maxDistance = distance;
    }

    // Raycast from source and forward a set distance. Returns true if ray hits a collider
    public bool doRaycast(out RaycastHit inHit)
    {
        Ray ray = new Ray(raySource.position, raySource.forward);

        if (Physics.Raycast(ray, out hit, maxDistance, layerMask))
        {
            Debug.DrawLine(ray.origin, hit.point, Color.red);
            inHit = hit;
            return true;
        }
        inHit = new RaycastHit();
        return false;
    }

    public bool doRaycast(out RaycastHit inHit, Vector3 newDirection)
    {
        Ray ray = new Ray(raySource.position, newDirection);

        if (Physics.Raycast(ray, out hit, maxDistance, layerMask))
        {
            Debug.DrawLine(ray.origin, hit.point, Color.red);
            inHit = hit;
            return true;
        }
        inHit = new RaycastHit();
        return false;
    }

	public bool doRaycast(out RaycastHit inHit, Vector3 newDirection, Vector3 newOrigin) 
	{
		Ray ray = new Ray (newOrigin, newDirection);

		if (Physics.Raycast (ray, out hit, maxDistance, layerMask)) 
		{
			Debug.DrawLine (ray.origin, hit.point, Color.yellow);
			inHit = hit;
			return true;
		}
		inHit = new RaycastHit ();
		return false;
	}

	public bool doRaycast(out RaycastHit inHit, Vector3 newDirection, Vector3 newOrigin, float distance) 
	{
		Ray ray = new Ray (newOrigin, newDirection);

		if (Physics.Raycast (ray, out hit, distance, layerMask)) 
		{
			Debug.DrawLine (ray.origin, hit.point, Color.blue);
			inHit = hit;
			return true;
		}
		inHit = new RaycastHit ();
		return false;
	}

}
