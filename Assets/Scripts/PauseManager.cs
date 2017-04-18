using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseManager : MonoBehaviour
{
    public static PauseManager instance;

    public delegate void PauseAction(bool isPaused);
    public static event PauseAction OnPause;

     
    static bool isPaused = false;
    // Use this for initialization
    void Start()
    {
        instance = FindObjectOfType<PauseManager>();
	}

    private void OnEnable()
    {
        OnPause += pauseGame;
    }
    private void OnDisable()
    {
        OnPause -= pauseGame;
    }
    // Update is called once per frame
    void Update ()
    {
        //Pauses the game if input is pressed
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
        //pause all Physics
        if (pause)
        {
            Time.timeScale = 0f;
        }
        else
        {
            Time.timeScale = 1;
        }
    }
    public static void resumeGame()
    {
        isPaused = false;
        OnPause(false);
    }
}
