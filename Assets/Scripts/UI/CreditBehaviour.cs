using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditBehaviour : MonoBehaviour
{
    private RectTransform m_RectTransform;
    private Rect m_CreditRect;
    private Canvas m_MainCanvas;
    public GameObject m_EndOfCredit;
    Vector2 rectPosition;
    bool finished;
	// Use this for initialization
	void Start ()
    {
        
        finished = false;
        m_MainCanvas = FindObjectOfType<Canvas>();
        m_RectTransform = GetComponent<RectTransform>();
        GameManager.GetPlayer().gameObject.SetActive(false);
    }
	
	// Update is called once per frame
	void OnGUI ()
    {
        rectPosition = new Vector2(m_RectTransform.position.x, m_RectTransform.position.y - m_RectTransform.rect.height);
        //check if text is above the screen
        if (Camera.main.WorldToViewportPoint(m_EndOfCredit.transform.position).y > 0.3f && !finished)
        {
            //ImageFader.instance.SetVisible(true);
            finished = true;
            GameManager.GetPlayer().m_MouseLook.SetCursorLock(false);
            SceneLoader.getInstance().LoadMainMenu();
        }
        else if(m_MainCanvas.transform.position.y + m_MainCanvas.pixelRect.height / 2 < rectPosition.y && !finished)
        {
            ImageFader.instance.SetVisible(true);
        }

    }
}
