using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditBehaviour : MonoBehaviour
{
    private RectTransform m_RectTransform;
    private Rect m_CreditRect;
    private Canvas m_MainCanvas;
    Vector2 rectPosition;
    bool finished;
	// Use this for initialization
	void Start ()
    {
        GameManager.GetPlayer().gameObject.SetActive(false);
        finished = false;
        m_MainCanvas = FindObjectOfType<Canvas>();
        m_RectTransform = GetComponent<RectTransform>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        rectPosition = new Vector2(m_RectTransform.position.x, m_RectTransform.position.y - m_RectTransform.rect.height);
        //check if text is above the screen
        if (m_MainCanvas.transform.position.y+m_MainCanvas.pixelRect.height * 0.75f < rectPosition.y && !finished)
        {
            //ImageFader.instance.SetVisible(true);
            finished = true;
            Debug.Log("Loading Menu");
            SceneLoader.getInstance().LoadMainMenu();
        }
        else if(m_MainCanvas.transform.position.y + m_MainCanvas.pixelRect.height / 2 < rectPosition.y && !finished)
        {
            ImageFader.instance.SetVisible(true);
        }

    }
}
