using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class SceneLoadButton : MonoBehaviour {

    public SceneLoader.Scenes m_SelectedScene;
    public float m_LoadDelay;

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
        Invoke("DoLoad", ImageFader.instance.m_FadeTime);
    }
    void DoLoad()
    {
        GameManager.GetPlayer().gameObject.SetActive(true);
        GameManager.GetPlayer().ResetPlayer();
        SceneLoader.InitialGameLoad(m_SelectedScene);
    }
}
