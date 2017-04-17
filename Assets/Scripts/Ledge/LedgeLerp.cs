using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeLerp : MonoBehaviour
{

    private bool m_beginLerp = true;
    private Vector3 m_startPos = new Vector3(0, 0, 0);
    private Vector3 m_targetPos = new Vector3(0, 0, 0);
    private float m_incrementor = 0;
    private float m_distanceThreshold = 0.5f;

    public float height = 4f;

    void Update()
    {
        if(m_beginLerp)
        {
            m_incrementor += 0.04f;
            Vector3 lerpPos = Vector3.Lerp(m_startPos, m_targetPos, m_incrementor);
            lerpPos.y += height * Mathf.Sin(Mathf.Clamp01(m_incrementor) * Mathf.PI);
            transform.position = lerpPos;
        }

        if (m_distanceThreshold < Vector3.Distance(transform.position, m_targetPos))
        {
            m_incrementor = 0;
            m_beginLerp = false;
        }
    }

    public void ledgeLerp(Vector3 destination)
    {
        m_startPos = transform.position;
        m_targetPos = destination;
        m_beginLerp = true;
    }

}
