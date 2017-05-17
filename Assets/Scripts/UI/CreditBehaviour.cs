using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditBehaviour : MonoBehaviour
{
    private RectTransform m_RectTransform;
    private Rect m_ScreenRect;
    private Canvas m_MainCanvas;
    Vector2[] rectPositions;
    bool finished = false;
	// Use this for initialization
	void Start ()
    {
        m_MainCanvas = FindObjectOfType<Canvas>();
        m_RectTransform = GetComponent<RectTransform>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        //check if text is above the screen
            if (!m_MainCanvas.pixelRect.Overlaps(m_RectTransform.rect) && !finished)
            {
                finished = true;
                Debug.Log("Loading Menu");
                SceneLoader.LoadMainMenu();
            }
	}
}
