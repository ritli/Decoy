using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class SceneLoadButton : MonoBehaviour {

    public SceneLoader.Scenes m_SelectedScene;
    public bool loadRequested = false;
	// Use this for initialization
    private void OnEnable()
    {
        GetComponent<Button>().onClick.AddListener(RequestSceneLoad);
    }
    private void OnDisable()
    {
        GetComponent<Button>().onClick.RemoveListener(RequestSceneLoad);
    }
    void RequestSceneLoad()
    {
        ImageFader.instance.SetVisible(true);
        if (!loadRequested)
        {

            Invoke("DoLoad", ImageFader.instance.m_FadeTime);
            loadRequested = true;
        }
    }
    void DoLoad()
    {
        Debug.Log("Request called to load.");
        GameManager.GetPlayer().gameObject.SetActive(true);
        GameManager.GetPlayer().ResetPlayer();
        loadRequested = false;
        SceneLoader.getInstance().InitialGameLoad(m_SelectedScene);
        
    }
}
