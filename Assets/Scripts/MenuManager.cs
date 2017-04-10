using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuManager : MonoBehaviour
{
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
    public void LoadFromCheckpoint(int index)
    {
         
    }
}
