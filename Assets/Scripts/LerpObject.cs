using UnityEngine;
using System.Collections;

public class LerpObject : MonoBehaviour 
{

    public float speed = 0;
    [Header("Uses this tranform if none is specified for origin.")]
    public Transform m_Origin;
    public Transform m_Target;

	// Use this for initialization
	void Start () 
    {
        if (m_Origin == null)
            m_Origin = GetComponent<Transform>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        m_Origin.position = Vector3.Lerp(m_Origin.position, m_Target.position, speed * Time.deltaTime);
	}
}
