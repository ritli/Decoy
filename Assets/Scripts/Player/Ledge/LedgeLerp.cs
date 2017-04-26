﻿using System.Collections;
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
            m_incrementor += 0.04f;

            // Start moving only the y-axis so that the camera does not clip into the enviroment while lerping.
            float lerpY = Mathf.MoveTowards(transform.position.y, m_targetPos.y, Time.deltaTime * lerpSpeed);

            Vector3 lerpPos;
            // When the transform y-coordinate has reached the target y-coordinate, start moving the other axises.
            if (m_targetPos.y - lerpY <= 0f)
            {
                float lerpX = Mathf.MoveTowards(transform.position.x, m_targetPos.x, Time.deltaTime * lerpSpeed);
                float lerpZ = Mathf.MoveTowards(transform.position.z, m_targetPos.z, Time.deltaTime * lerpSpeed);
                lerpPos = new Vector3(lerpX, lerpY, lerpZ);
            }
            else
                lerpPos = new Vector3(transform.position.x, lerpY, transform.position.z);

            // Modify the movement with a sine curve
			lerpPos.y += Time.deltaTime * height * Mathf.Sin(Mathf.Clamp01(m_incrementor) * Mathf.PI);
            transform.position = lerpPos;

			if (Vector3.Distance(transform.position, m_targetPos) < m_distanceThreshold)
			{
	            m_incrementor = 0;
	            m_beginLerp = false;
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
