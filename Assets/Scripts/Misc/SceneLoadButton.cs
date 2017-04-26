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
        GameManager.GetPlayer().gameObject.SetActive(true);
        GameManager.GetPlayer().ResetPlayer();
        SceneLoader.InitialGameLoad(m_SelectedScene);
    }
}
