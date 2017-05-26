using System.Collections;
using System;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

using UnityEngine;

public class LoadingScene : MonoBehaviour
{
    public AsyncOperation loadInfo;
    public SceneLoader.Scenes scene;
    public bool loaded;

    public LoadingScene(AsyncOperation newLoadInfo, SceneLoader.Scenes newScene, bool isloaded)
    {
        loadInfo = newLoadInfo;
        scene = newScene;
        loaded = isloaded;
    }
}
public class SceneLoader : MonoBehaviour
{
    //Add new Scenes here as they are created.
    public enum Scenes { InitialScene, InGameBase, MainMenu, Section1a, Section1b, Section2a, Section2b, Section2c, Section3, Section4, Section5, Section6, CreditScene, MusicScene, AudioScene, IntroCutscene, SkyScene };
    public static SceneLoader instance;
    private static List<LoadingScene> m_ScenesLoading;
	public List<Scenes> outsideScenes = new List<Scenes>{ Scenes.Section2a, Scenes.Section2b, Scenes.Section2c, Scenes.Section4, Scenes.Section5, Scenes.Section6, Scenes.CreditScene };
    public bool startfromMenu;
    // Use this for initialization
    private void Awake()
    {
        instance = GetComponent<SceneLoader>();
    }
    void Start ()
    {
        m_ScenesLoading = new List<LoadingScene>();
        if(FindObjectsOfType<SceneLoader>().Length > 1)
        {
            Debug.LogError("ERROR: More than one SceneLoader is present.");
        }
        //Load the MainMenu
        if(startfromMenu)
            LoadMainMenu();
    }
    private void Update()
    {
        
    }
    public static SceneLoader getInstance()
    {
        return instance;
    }
    public void UnloadSceneAsync(Scenes scene)
    {
        //unload scene in background if it already is't unloaded.
        if (AllowNewSceneState(scene, false))
            SceneManager.UnloadSceneAsync(scene.ToString());
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is not loaded");
    }
    public bool IsSceneLoading(Scenes scene)
    {
        for(int index = 0; index < m_ScenesLoading.Count-1; index++)
        {
            if (!m_ScenesLoading[index].loadInfo.isDone && m_ScenesLoading[index].scene == scene)
                return true;
            //to pervent list to go haywire and only increase in size, remove those that is already loaded.
            else if (m_ScenesLoading[index].loadInfo.isDone)
            {
                m_ScenesLoading.RemoveAt(index);
            }
        }

        return SceneManager.GetSceneByName(scene.ToString()).isLoaded;

    }
    //Used for Triggers only
    public void LoadSceneAsync(Scenes scene)
    {
        //loads a scene "additive" in background if it already isn't already loaded.
        if (AllowNewSceneState(scene, true))
        {
            m_ScenesLoading.Add(new LoadingScene(SceneManager.LoadSceneAsync(scene.ToString(), LoadSceneMode.Additive), scene, true));
        }
        else
            Debug.LogWarning("Scene \"" + scene.ToString() + "\" is already loaded");
    }

    //Used mainly when initially loading into the game
    public void LoadSceneSync(Scenes scene)
    {
        Debug.Log("Load Scene Sync called to load: "+scene.ToString());
        //loads a scene "addetive" directly. if it already isn't loaded.
        if (AllowNewSceneState(scene, true))
        {
//            GameManager.GetPlayer().gameObject.SetActive(true);
//            GameManager.GetPlayer().pausePlayer(false);

            SceneManager.LoadScene(scene.ToString(),LoadSceneMode.Additive);
            ImageFader.instance.SetVisible(false);

        }
        else
            Debug.LogWarning("Scene \""+scene.ToString()+"\" is already loaded");
    }
    private bool  AllowNewSceneState(Scenes scene, bool newState)
    {
        if (newState)
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
        //if scene is a section of the map, then load it.
        if (SceneManager.GetSceneByName(scene.ToString()).isLoaded == newState )
            return false;

        return true;
    }
    public void LoadMainMenu()
    {
        UnloadAll();

        //Loads Menu, activates player 
        GameManager.GetPlayer().gameObject.SetActive(false);
        SceneManager.LoadScene(Scenes.MainMenu.ToString(), LoadSceneMode.Additive);
        ImageFader.instance.SetVisible(false);
    }
    public void InitialGameLoad(Scenes scene)
    {
        if (IsSceneLoading(Scenes.MainMenu))
        {
            UnloadSceneAsync(Scenes.MainMenu);
        }

        //load checkpoint/ whatever main ingame scene.
        LoadSceneSync(scene);

		// Load Sky Scene
		if (SceneLoader.getInstance().outsideScenes.Contains(scene))
			LoadSceneSync(Scenes.SkyScene);

        //load target Scene
        LoadSceneSync(Scenes.InGameBase);
        LoadSceneSync(Scenes.MusicScene);
        LoadSceneSync(Scenes.AudioScene);

        GameManager.GetPlayer().gameObject.SetActive(true);
        GameManager.GetPlayer().m_MouseLook.SetCursorLock(true);

    }
    public void UnloadAll()
    {
        //removes all scenes from the game, except InitialScene
        for (int sceneIndex = 0; sceneIndex < SceneManager.sceneCount; sceneIndex++)
        {
            Scene currentScene = SceneManager.GetSceneAt(sceneIndex);
            if (currentScene.name != Scenes.InitialScene.ToString() && currentScene.name != "InitialSceneDebug")
            {
                Debug.Log("Unloading scene: " + currentScene.name);
                SceneManager.UnloadSceneAsync(currentScene);
            }
        }
    }

}
