using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class LaserEditor : MonoBehaviour {

    private Transform[] m_InternalLaserPoints;
    public List<Transform> m_LaserPoints;
    private LineRenderer m_LineRenderer;

	// Use this for initialization
	void OnEnable ()
    {
        m_LaserPoints.Clear();
        m_LineRenderer = GetComponent<LineRenderer>();
        m_InternalLaserPoints = GetComponentsInChildren<Transform>();
        //iterate over children and add them anew to list which displays transforms in editor
        for (int index = 1; index < m_InternalLaserPoints.Length; index++)
        {
            m_LaserPoints.Add(m_InternalLaserPoints[index]);
        }
        m_LineRenderer.positionCount = m_LaserPoints.Count;
    }
	
	// Update is called once per frame
	void Update ()
    {
        for (int index = 0; index < m_LaserPoints.Count; index++)
        {
            //Set posiitions in Linerenderer
            m_LineRenderer.SetPosition(index, m_LaserPoints[index].position);
        }
    }
}
