using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuManager : MonoBehaviour
{
    public bool m_StartActive;

    public GameObject m_Main;
    public GameObject m_Options;
    public GameObject m_QuitConfirm;

    private void Start()
    {
        //set only main to be visible
        m_Main.SetActive(m_StartActive);
        m_Options.SetActive(false);
        m_QuitConfirm.SetActive(false);
    }
    private void OnEnable()
    {
        PauseManager.OnPause += pauseGame;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pauseGame;
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && !m_Main.activeSelf)
        {

            if (m_Options.activeSelf)
            {
                m_Options.SetActive(false);
            }
            else if (m_QuitConfirm.activeSelf)
            {
                m_QuitConfirm.SetActive(false);
            }
            m_Main.SetActive(true);
            if (PauseManager.GetInstance() != null && PauseManager.GetInstance().isPausedDisabled() && PauseManager.GetInstance().isPaused())
            {
                PauseManager.GetInstance().DisablePause(false);
            }
        }
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
        m_Main.SetActive(pause);
    }
    public void resume()
    {
        PauseManager.GetInstance().resumeGame();
    }
    public void clearPlayerPrefs()
    {
        PlayerPrefs.DeleteAll();
    }
}
