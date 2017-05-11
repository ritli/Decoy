using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuLoadButton : MonoBehaviour {


    public void RequestMainMenuLoad()
    {
        ImageFader.instance.SetVisible(true);
        Invoke("DoLoadMenu", ImageFader.instance.m_FadeTime);
        PauseManager.resumeGame();
        GameManager.GetPlayer().pausePlayer(true);

    }
    void DoLoadMenu()
    {
        GameManager.GetPlayer().enabled = false;
        SceneLoader.LoadMainMenu();
    }
}
