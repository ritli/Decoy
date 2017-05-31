using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    // Event for telling all ActivationObjects to be reset.
    public delegate void ActivationReset(int index);
    public static event ActivationReset OnActivationReset;

    static GameManager m_instance;
    PlayerController m_player;
    Decoy m_decoy;
    
    float m_MusicVolume = 0;
    float m_FXVolume = 0;
    float m_MouseSensitivity = 0;

    bool m_LoadAsync;

    string m_timeElapsed;

	void Start () {
        Init();

        FindReferences();
        Time.timeScale = 1;
    }
    //private void OnLevelWasLoaded(int level)
    //{
    //    if (level != 0 && level != 1)
    //    {
    //        FindReferences();
    //    }

    //}

    public static void SetAsyncLoad(bool active)
    {
        SceneLoader.getInstance().m_loadAsync = active;
    }

    public static void SetTimeElapsed(string time)
    {
        m_instance.m_timeElapsed = time;
    }


    public static string GetTimeElapsed()
    {
        return m_instance.m_timeElapsed;
    }


    void Init()
    {
        if (CheckForSingleton())
        {
            m_instance = this;
            //DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
        //resetActivations();
    }

    bool CheckForSingleton()
    {
        if (FindObjectsOfType<GameManager>().Length > 1 && FindObjectsOfType<GameManager>()[0] != this)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    void FindReferences()
    {
        m_player = FindObjectOfType<PlayerController>();
        if(m_player == null)
        {
            Debug.LogError("Didn't find a player.");
        }
    }

    public static PlayerController GetPlayer()
    {
        return m_instance.m_player;
    }

    public static void SetDecoy(Decoy decoy)
    {
        m_instance.m_decoy = decoy;
    }

    public static Decoy GetDecoy()
    {
        return m_instance.m_decoy;
    }
    public static void applySettings(float musicVol, float fxVol, float mouseSense)
    {
        FMODUnity.RuntimeManager.GetVCA("vca:/MusicVolume").setVolume(musicVol);
        FMODUnity.RuntimeManager.GetVCA("vca:/SFXVolume").setVolume(fxVol);
        m_instance.m_player.setMouseSense(mouseSense);

        m_instance.m_MusicVolume = musicVol;
        m_instance.m_FXVolume = fxVol;
        m_instance.m_MouseSensitivity = mouseSense;
    }

    // Called when activation objects are to be reset based on the checkpoint the player has reached.
    public static void resetActivations()
    {
        if (PlayerPrefs.HasKey("CheckpointIndex"))
        {
            if (OnActivationReset != null)
                OnActivationReset(PlayerPrefs.GetInt("CheckpointIndex"));
            Debug.LogWarning("No Previous save was made. No reset is done");
        }
        
    }
}
