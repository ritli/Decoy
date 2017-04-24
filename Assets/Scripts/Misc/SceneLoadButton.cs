using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class SceneLoadButton : MonoBehaviour {

    public SceneLoader.Scenes m_SelectedScene;

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
        if(SceneLoader.IsSceneLoaded(SceneLoader.Scenes.MainMenu))
        {
            Debug.Log("MainMenu loaded, Unloading...");
            SceneLoader.UnloadSceneAsync(SceneLoader.Scenes.MainMenu);
        }
        GameManager.GetPlayer().enabled = true;
        SceneLoader.LoadSceneSync(m_SelectedScene);
    }
}
