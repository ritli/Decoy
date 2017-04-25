using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageFader : MonoBehaviour
{
    Image m_Image;
    public float m_Speed;
    public bool m_TextureVisible;
    private float timeElapsed = 0;
	// Use this for initialization
	void Start ()
    {
        m_Image = GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(m_TextureVisible)
        {
            m_Image.color = Color.Lerp(m_Image.color, Color.black, timeElapsed);
        }
        else
        {
            m_Image.color = Color.Lerp(m_Image.color, Color.clear, timeElapsed);
        }
        timeElapsed += Time.deltaTime * (m_Speed / 10);
	}
    public void SetVisible(bool state)
    {
        m_TextureVisible = state;
        timeElapsed = 0;
    }
}
