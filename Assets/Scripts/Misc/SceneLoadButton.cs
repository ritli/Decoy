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
        loadRequested = false;
        FindObjectOfType<MenuManager>().clearPlayerPrefs();
        GameManager.GetPlayer().ResetPlayer();
        //Reset to initial state, to enable replaying
        GameManager.GetPlayer().initialReset();
        if(Checkpoint.isPreviouslySaved())
        {
            Debug.Log("still saved.");
        }
		SceneLoader.getInstance().LoadSceneSync(m_SelectedScene);
        
    }
}
