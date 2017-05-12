using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorFinder : MonoBehaviour
{
    Raycast m_Raycast;
    public float m_YOffset;
    RaycastHit m_floorhit;

	// Use this for initialization
	void Start ()
    {
        m_Raycast = GetComponent<Raycast>();	
	}
	
	// Update is called once per frame
	void Update ()
    {
        m_Raycast.doRaycast(out m_floorhit, new Vector3(0, -1, 0));
        transform.position = m_floorhit.point;
        transform.Translate(new Vector3(0,m_YOffset,0), Space.World);
	}
}
