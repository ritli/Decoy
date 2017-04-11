using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseManager : MonoBehaviour
{
    public delegate void PauseAction(bool isPaused);
    public static event PauseAction OnPause;


    private bool isPaused = false;
	// Use this for initialization
	void Start () {
		
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
}
