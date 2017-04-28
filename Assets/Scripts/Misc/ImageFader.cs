using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageFader : MonoBehaviour
{
    public static ImageFader instance;
    public Texture m_Texture;
    [Tooltip("Time in milliseconds.")]
    public float m_FadeTime;
    private float m_TimeElapsed;
    public bool m_StartVisible;
    public bool m_TextureVisible;
    private Color m_Color;
    public float m_Alpha;
    private void Awake()
    {
        if(m_StartVisible)
        {
            m_Color = Color.white;
        }
        instance = this;
        ImageFader[] imageFaders = FindObjectsOfType<ImageFader>();
        foreach( ImageFader fader in imageFaders)
        {
            if (instance != fader)
            {
                Destroy(fader);
                Debug.LogWarning("Found multiple instances of ImageFader. Deleted instances and left one.");
            }
        }
    }
    // Use this for initialization
    private void OnGUI()
    {
        if (m_TextureVisible)
            m_Color = Color.Lerp(Color.clear, Color.white, m_TimeElapsed / m_FadeTime);
        else
            m_Color = Color.Lerp(Color.white, Color.clear, m_TimeElapsed / m_FadeTime);


        m_TimeElapsed += Time.deltaTime;
        
        GUI.color = m_Color;
        GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), m_Texture);
        m_Alpha = GUI.color.a;
    }
    public void SetVisible(bool state)
    {
        m_TextureVisible = state;
        m_TimeElapsed = 0;
    }
}
