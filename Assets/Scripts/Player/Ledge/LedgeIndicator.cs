using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeIndicator : MonoBehaviour {

	private SpriteRenderer m_spriteRenderer;

	// Use this for initialization
	void Start () {
		m_spriteRenderer = GetComponentInChildren<SpriteRenderer>(true);
		setLedgeIndicator(false);
	}

	public void setLedgeIndicator(bool state) 
	{
		if (state) 
		{
			m_spriteRenderer.color = Color.red;
		} else 
		{
			m_spriteRenderer.color = Color.white;
		}
	}

}
