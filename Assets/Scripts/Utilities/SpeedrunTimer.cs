using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using System;

public class SpeedrunTimer : MonoBehaviour
{
    public TMPro.TextMeshProUGUI m_Text;
    public bool started = false;
    public bool finished = false;
    private float time;
	// Use this for initialization
	void Start ()
    {
        //m_Text.enabled = false;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(started && !finished)
        {
            time += Time.deltaTime;
        }
        /*
        if (Input.GetKeyDown(KeyCode.I))
        {
            int minutes = Mathf.FloorToInt(time / 60);
            int seconds = (int)time % 60;
            float decimals = time - Mathf.Floor(time);
            string stringDecimals = decimals.ToString().Substring(2, 3);


            //m_Text.enabled = true;
            print(String.Format("{0:D2}:{1:D2}:{2:D2}", minutes, seconds, stringDecimals));
        }
        */
	}

    public void startTimer()
    {
        if (!started)
        {
            time = 0;
            started = true;
            finished = false;
        }
    }
    public void stopTimer()
    {
        finished = true;
        publishTime();
    }
    public void publishTime()
    {
        int minutes = Mathf.FloorToInt(time / 60);
        int seconds = (int)time % 60;
        float decimals = time - minutes * 60 + seconds;
        string stringDecimals = decimals.ToString().Substring(0, 1);


        //m_Text.enabled = true;
        GameManager.SetTimeElapsed(String.Format("{0:D2}:{1:D2}:{2:D2}", minutes, seconds, stringDecimals));
        //Invoke("hideText", 10);
    }
    public void hideText()
    {
        m_Text.enabled = false;
    }

}
