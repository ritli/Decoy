using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseManager : MonoBehaviour
{
    public static PauseManager instance;

    public delegate void PauseAction(bool isPaused);
    public static event PauseAction OnPause;


    private bool isPaused = false;
    // Use this for initialization
    void Start()
    {
        instance = FindObjectOfType<PauseManager>();

	}
	
	// Update is called once per frame
	void Update ()
    {
		if(Input.GetKeyDown(KeyCode.Escape))
        {
            if(OnPause != null && !isPaused)
            {
                isPaused = true;
                OnPause(true);
            }
            else
            {
                isPaused = false;
                OnPause(false);
            }
        }
	}
    public void pauseGame(bool pause)
    {
        if(pause)
        {
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        }

        OnPause(pause);
    }
}
