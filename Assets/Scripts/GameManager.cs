using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    static GameManager m_instance;
    PlayerController m_player;
    Decoy m_decoy;

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
}
