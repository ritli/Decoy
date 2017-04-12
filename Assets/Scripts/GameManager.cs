using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    static GameManager m_instance;
    PlayerController m_player;
    Decoy m_decoy;

    float m_MusicVolume = 0;
    float m_FXVolume = 0;
    float m_MouseSensitivity = 0;

	void Start () {
        Init();

        FindReferences();
            
    }

    void Init()
    {
        if (CheckForSingleton())
        {
            m_instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

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
        m_instance.m_MusicVolume = musicVol;
        m_instance.m_FXVolume = fxVol;
        m_instance.m_MouseSensitivity = mouseSense;
    }
}
