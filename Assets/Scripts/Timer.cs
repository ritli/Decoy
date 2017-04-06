using UnityEngine;
using System.Collections;

public class Timer : MonoBehaviour {

    // Variable for saving past time
    private float m_timer;

    // Parameter for deciding time before time is up.
    public  float m_timeout = 1.0f;
    public bool printTime = false;
	
	// Update timer.
	private void Update ()
    {
        m_timer += Time.deltaTime;

        if(hasTimePassed(0.1f) && printTime)
        {
            print(m_timer);
        }
	}

    // Change timeout from scripts in runtime.
    public void setTimeout(float arg_timeout)
    {
        m_timeout = arg_timeout;
    }

    // Used to manipulate time by given argument.
    public void forwardTime(float arg_time)
    {
        m_timer += arg_time;
    }

    // Check whether time is out for and reset the timer if true.
    public bool isTimeUp()
    {
        return (m_timer >= m_timeout) ? true : false;
    }

    // Check whether the given time has past since the last reset or initial start.
    public bool hasTimePassed(float arg_passedTime)
    {
        return (m_timer >= arg_passedTime) ? true : false;
    }

    public void resetTimer()
    {
        m_timer = 0.0f;
    }
}
