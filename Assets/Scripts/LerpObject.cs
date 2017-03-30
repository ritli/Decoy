using UnityEngine;
using System.Collections;

public class LerpObject : MonoBehaviour 
{

    public float speed = 0;
    [Header("Uses this tranform if none is specified for origin.")]
    public Transform m_Origin;
    public Transform m_Aim;
    private Vector3 m_Target;
    bool targetReached = true;
    public float m_thresholdDistance;

	// Use this for initialization
	void Start () 
    {
        if (m_Origin == null)
            m_Origin = GetComponent<Transform>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        if (!targetReached)
        {
            transform.position = Vector3.Lerp(transform.position, m_Target, speed * Time.deltaTime);

            if(Vector3.Distance(m_Origin.position, m_Target) < m_thresholdDistance)
            {
                targetReached = true;
            }
        }
 
	}
    public void beginLerp()
    {
        m_Target = m_Aim.position;
        targetReached = false;
    }
}
