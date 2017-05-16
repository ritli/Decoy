using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseManager : MonoBehaviour
{
    static PauseManager instance;

    public delegate void PauseAction(bool isPaused);
    public static event PauseAction OnPause;

    private bool m_PauseDisabled = false; 
    private bool isPaused = false;
    // Use this for initialization
    void Start()
    {
        instance = FindObjectOfType<PauseManager>();

        //To force the game to begin running at full speed.
        //There was an error on some machines that originated from the timescale being 0.
        Time.timeScale = 1.0f;
	}

    private void OnEnable()
    {
        OnPause += pauseGame;
    }
    private void OnDisable()
    {
        OnPause -= pauseGame;
    }
    public static PauseManager GetInstance()
    {
        return instance;
    }
    // Update is called once per frame
    void Update ()
    {
        //Pauses the game if input is pressed
		if(Input.GetKeyDown(KeyCode.Escape) && !m_PauseDisabled)
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
            Time.timeScale = 0.00000000001f;
        }
        else
        {
            Time.timeScale = 1;
        }
    }
    public static void resumeGame()
    {
        PauseManager.GetInstance().isPaused = false;
        OnPause(false);
    }
    public void DisablePause( bool state)
    {
        m_PauseDisabled = state;
    }
}
