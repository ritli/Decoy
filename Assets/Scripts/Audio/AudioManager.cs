using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour {

    AudioManager m_instance;

	void Start () {

        Init();
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

    void Update () {
		
	}
}
