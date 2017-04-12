using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuManager : MonoBehaviour
{
    public GameObject m_DefaultMenu;
    public bool m_StartActive;
    private void Start()
    {
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
        SceneManager.LoadScene(1);
    }
    public void pauseGame(bool pause)
    {
        m_DefaultMenu.SetActive(pause);
    }
}
