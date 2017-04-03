using UnityEngine;
using System.Collections;

public class Raycast : MonoBehaviour {

    public Transform raySource;
    public float maxDistance;
    public int[] castingLayers;

    private RaycastHit hit;
    private int layerMask = 0;

    void Start()
    {
        // Create the layermask for the layers on which the ray should be casted.
        for (int i = 0; i < castingLayers.Length; i++)
        {
            layerMask += (int)Mathf.Pow(2, castingLayers[i]);
        }
    }


    //void Update()
    //{
    //    RaycastHit tempHit = new RaycastHit();
    //    if (doRaycast(out tempHit))
    //        print(tempHit.transform.gameObject.name);
    //}

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
}
