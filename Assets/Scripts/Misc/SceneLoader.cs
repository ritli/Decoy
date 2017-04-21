using System.Collections;
using System;
using UnityEngine.SceneManagement;
using System.Collections.Generic;
using UnityEngine;

public class SceneLoader : MonoBehaviour
{
    //Add new Scenes here as they are created.
    public enum Scenes { BaseScene, CheckpointScene, MainMenu, Section1a, Section1b};

    public static SceneLoader instance;

    private AsyncOperation m_LoadingInfo;
    private bool m_IsLoading;

	// Use this for initialization
	void Start ()
    {
        //Load the MainMenu
        LoadMainMenu();
	}
    private void Update()
    {
        //check if scene is finished loading
        //this is to pervent scenes to be loaded two times.
        if(m_LoadingInfo.isDone)
        {
            //
        }
    }

    public static void UnloadSceneAsync(Scenes scene)
    {
        //unload scene in background if it already is't unloaded.
        if (AllowNewSceneState(scene, false))
            SceneManager.UnloadSceneAsync(scene.ToString());
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is not loaded");
    }
    //Used for Triggers only
    public static void LoadSceneAsync(Scenes scene)
    {
        //loads a scene "additive" in background if it already isn't already loaded.
        if (AllowNewSceneState(scene, true))
            SceneManager.LoadSceneAsync(scene.ToString(), LoadSceneMode.Additive);
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is already loaded");
    }

    public static bool IsSceneLoaded(Scenes scene)
    {
        return SceneManager.GetSceneByName(scene.ToString()).isLoaded;

    }
    //Used mainly when initially loading into the game
    public static void LoadSceneSync(Scenes scene)
    {
        //loads a scene "addetive" directly. if it already isn't loaded.
        if (AllowNewSceneState(scene, true))
        {
            GameManager.GetPlayer().gameObject.SetActive(true);
            SceneManager.LoadScene(scene.ToString(),LoadSceneMode.Additive);
            
        }
        else
            Debug.LogWarning("Scene \""+scene.ToString()+"\" is already loaded");
    }
    static bool  AllowNewSceneState(Scenes scene, bool newState)
    {
        //to handle the exceptions BaseScene and CheckpointScene, this method returns wether the scene can be loaded or unloaded.
        if(SceneManager.GetSceneByName(scene.ToString()).isLoaded && scene == Scenes.BaseScene)
            return false;
        //if scene is a section of the map, then load it.
        if (SceneManager.GetSceneByName(scene.ToString()).isLoaded == newState)
            return false;

        return true;
    }
    public static void LoadMainMenu()
    {
        //removes all scenes from the game, except BaseScene
        for (int sceneIndex = 0; sceneIndex < SceneManager.sceneCount-1;)
        {
            Scene currentScene = SceneManager.GetSceneAt(SceneManager.sceneCount);
            if (currentScene.name != Scenes.BaseScene.ToString())
                SceneManager.UnloadSceneAsync(currentScene);
            else
                sceneIndex++;
        }
        //Loads Menu, activates player 
        GameManager.GetPlayer().gameObject.SetActive(false);
        SceneManager.LoadScene(Scenes.MainMenu.ToString(), LoadSceneMode.Additive);
    }

}
