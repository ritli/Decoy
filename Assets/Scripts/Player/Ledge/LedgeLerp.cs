using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeLerp : MonoBehaviour
{

    private bool m_beginLerp = false;
    private Vector3 m_startPos = new Vector3(0, 0, 0);
    private Vector3 m_targetPos = new Vector3(0, 0, 0);
	private float m_distance;
    private float m_incrementor = 0f;
    private float m_distanceThreshold = 0.3f;


    public float height;
	public float lerpSpeed;

    void Update()
    {
        if(m_beginLerp)
        {
            m_incrementor += 0.08f;
			Vector3 lerpPos = Vector3.Lerp(transform.position, m_targetPos, Time.deltaTime * lerpSpeed);
			lerpPos.y += Time.deltaTime * height * Mathf.Sin(Mathf.Clamp01(m_incrementor) * Mathf.PI);
            transform.position = lerpPos;
//			print ("Lerping");

			if (Vector3.Distance(transform.position, m_targetPos) < m_distanceThreshold)
			{
	            m_incrementor = 0;
	            m_beginLerp = false;
//				print ("Finished lerping");
	        }
		}
//		Debug.DrawRay (m_startPos, Vector3.up, Color.yellow, 5f);
//		Debug.DrawRay (m_targetPos, Vector3.up, Color.cyan, 5f);
    }

    public void lerp(Vector3 destination)
    {
        m_startPos = transform.position;
		m_targetPos = destination + Vector3.up;
        m_beginLerp = true;
    }

	public bool isLerping() 
	{
		return m_beginLerp;	
	}

}
