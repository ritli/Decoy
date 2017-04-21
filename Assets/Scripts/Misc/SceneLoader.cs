using System.Collections;
using System;
using UnityEngine.SceneManagement;
using System.Collections.Generic;
using UnityEngine;

public class SceneLoader : MonoBehaviour
{
    //Add new Scenes here as they are created.
    public enum Scenes { BaseScene, CheckpointScene, MainMenu, Section1a};

    public static SceneLoader instance;


	// Use this for initialization
	void Start ()
    {
        //  DontDestroyOnLoad(this);

        GameManager.GetPlayer().gameObject.SetActive(false);

        LoadMainMenu();
	}

    public static void UnloadSceneAsync(Scenes scene)
    {
        if (AllowNewSceneState(scene))
        {
            SceneManager.UnloadSceneAsync(scene.ToString());
        }
        else
        {
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is not loaded");
        }
    }
    //Used for Triggers only
    public static void LoadSceneAsync(Scenes scene)
    {
        if (AllowNewSceneState(scene))
        {
            SceneManager.LoadSceneAsync(scene.ToString(), LoadSceneMode.Additive);
        }
        else
        {
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is already loaded");
        }
    }

    public static bool IsSceneLoaded(Scenes scene)
    {
        return SceneManager.GetSceneByName(scene.ToString()).isLoaded;

    }
    //Used mainly when initially loading into the game
    public static void LoadSingleScene(Scenes scene)
    {
        
        if (AllowNewSceneState(scene))
        {
            GameManager.GetPlayer().gameObject.SetActive(true);
            SceneManager.LoadScene(scene.ToString(),LoadSceneMode.Additive);
            
        }
        else
        {
            Debug.LogWarning("Scene \""+scene.ToString()+"\" is already loaded");
        }
    }
    static bool  AllowNewSceneState(Scenes scene)
    {
        //to handle the exceptions BaseScene and CheckpointScene, this method returns wether the scene can be loaded or unloaded.
        if(SceneManager.GetSceneByName(scene.ToString()).isLoaded && scene == Scenes.BaseScene)
        {
            return false;
        }
        //if scene is a section of the map, then load it.
        //return SceneManager.GetSceneByName(scene.ToString()).isLoaded;
        return true;
    }
    public static void LoadMainMenu()
    {
        for (int sceneIndex = 0; sceneIndex < SceneManager.sceneCount-1;)
        {
            Scene currentScene = SceneManager.GetSceneAt(SceneManager.sceneCount);
            if (currentScene.name != Scenes.BaseScene.ToString())
                SceneManager.UnloadSceneAsync(currentScene);
            else
                sceneIndex++;
        }
        //load Menu
        GameManager.GetPlayer().gameObject.SetActive(false);
        SceneManager.LoadScene(Scenes.MainMenu.ToString(), LoadSceneMode.Additive);
    }

}
