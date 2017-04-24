using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuLoadButton : MonoBehaviour {

    private void OnEnable()
    {
        GetComponent<Button>().onClick.AddListener(RequestMainMenuLoad);
    }
    private void OnDisable()
    {
        GetComponent<Button>().onClick.RemoveListener(RequestMainMenuLoad);
    }
    void RequestMainMenuLoad()
    {
        GameManager.GetPlayer().enabled = false;
        SceneLoader.LoadMainMenu();
    }
}
