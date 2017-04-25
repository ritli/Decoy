using System.Collections;
using System;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

using UnityEngine;

public class LoadingScene : MonoBehaviour
{
    public AsyncOperation loadInfo;
    public SceneLoader.Scenes scene;

    public LoadingScene(AsyncOperation newLoadInfo, SceneLoader.Scenes newScene)
    {
        loadInfo = newLoadInfo;
        scene = newScene;
    }
}
public class SceneLoader : MonoBehaviour
{
    //Add new Scenes here as they are created.
    public enum Scenes { InitialScene, InGameBase, MainMenu, Section1a, Section1b, Section2, Section3 };
    public static SceneLoader instance;
    private static List<LoadingScene> m_ScenesLoading;

	// Use this for initialization
	void Start ()
    {
        m_ScenesLoading = new List<LoadingScene>();
        //Load the MainMenu
        LoadMainMenu();
	}
    public static void UnloadSceneAsync(Scenes scene)
    {
        //unload scene in background if it already is't unloaded.
        if (AllowNewSceneState(scene, false))
            SceneManager.UnloadSceneAsync(scene.ToString());
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is not loaded");
    }
    public static bool IsSceneLoaded(Scenes scene)
    {
        for(int index = 0; index < m_ScenesLoading.Count-1; index++)
        {
            if (!m_ScenesLoading[index].loadInfo.isDone && m_ScenesLoading[index].scene == scene)
                return true;
        }

        return SceneManager.GetSceneByName(scene.ToString()).isLoaded;

    }
    //Used for Triggers only
    public static void LoadSceneAsync(Scenes scene)
    {
        //loads a scene "additive" in background if it already isn't already loaded.
        if (AllowNewSceneState(scene, true))
        {
            m_ScenesLoading.Add(new LoadingScene(SceneManager.LoadSceneAsync(scene.ToString(), LoadSceneMode.Additive),scene));
        }
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is already loaded");
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
        if(newState)
        {
            int instances = 0;
            for (int sceneIndex = 0; sceneIndex < SceneManager.sceneCount - 1; sceneIndex++)
            {
                Scene currentScene = SceneManager.GetSceneAt(sceneIndex);
                if (currentScene.name == scene.ToString())
                {
                    instances++;
                }
            }
            if(instances >= 1)
            {
                Debug.Log("Found already scene present");
                return false;
            }
        }
        //to handle the exceptions BaseScene and CheckpointScene, this method returns wether the scene can be loaded or unloaded.
        if(SceneManager.GetSceneByName(scene.ToString()).isLoaded && scene == Scenes.InitialScene)
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
            if (currentScene.name != Scenes.InitialScene.ToString())
                SceneManager.UnloadSceneAsync(currentScene);
            else
                sceneIndex++;
        }
        //Loads Menu, activates player 
        GameManager.GetPlayer().gameObject.SetActive(false);
        SceneManager.LoadScene(Scenes.MainMenu.ToString(), LoadSceneMode.Additive);
    }
    public static void InitialGameLoad(Scenes scene)
    {
        if (IsSceneLoaded(Scenes.MainMenu))
        {
            Debug.Log("MainMenu loaded, Unloading...");
            UnloadSceneAsync(Scenes.MainMenu);
        }

        
        //load checkpoint/ whatever main ingame scene.
        LoadSceneSync(Scenes.InGameBase);
        //load target Scene
        LoadSceneSync(scene);
        GameManager.GetPlayer().enabled = true;

    }

}
