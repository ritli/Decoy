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
        m_Text.enabled = false;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(started && !finished)
        {
            time += Time.deltaTime;
        }
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
    }
    public void publishTime()
    {
        int minutes = Mathf.FloorToInt(time / 60);
        int seconds = (int)time % 60;
        float decimals = time - minutes * 60 + seconds;
        string stringDecimals = decimals.ToString().Substring(0, 1);

        m_Text.text = String.Format("TIME: {0}:{1}:{2}", minutes, seconds, stringDecimals);
    }
}
