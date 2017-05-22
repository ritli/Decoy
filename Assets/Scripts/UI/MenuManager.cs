using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuManager : MonoBehaviour
{
    private GameObject m_DefaultMenu;
    public bool m_StartActive;
    private void Start()
    {
        transform.root.SetAsFirstSibling();
        m_DefaultMenu = transform.root.GetChild(1).gameObject;
        m_DefaultMenu.SetActive(m_StartActive);
    }
    private void OnEnable()
    {
        PauseManager.OnPause += pauseGame;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pauseGame;
    }
    public void changeScene(int sceneIndex)
    {
        SceneManager.LoadScene(sceneIndex);
    }
    public void quitGame()
    {
        Application.Quit();
    }
    public void setGameObjectActive(GameObject target)
    {
        target.SetActive(true);   
    }
    public void setGameObjectInactive(GameObject target)
    {
        target.SetActive(false);
    }
    public void continueGame()
    {
        Invoke("DoContinue", ImageFader.instance.m_FadeTime);
        ImageFader.instance.SetVisible(true);
    }
    void DoContinue()
    {
        if (Checkpoint.isPreviouslySaved())
        {
            SceneLoader.getInstance().InitialGameLoad(Checkpoint.getSavedScene());
            GameManager.GetPlayer().ResetPlayer();
        }
        else
            SceneLoader.getInstance().InitialGameLoad(SceneLoader.Scenes.Section1a);
    }
    public void pauseGame(bool pause)
    {
        m_DefaultMenu.SetActive(pause);
    }
    public void resume()
    {
        PauseManager.resumeGame();
    }
    public void clearPlayerPrefs()
    {
        PlayerPrefs.DeleteAll();
    }
}
