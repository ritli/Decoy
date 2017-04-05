using UnityEngine;
using System.Collections;

public class Timer : MonoBehaviour {

    // Variable for saving past time
    private float m_timer;

    // Parameter for deciding time before time is up.
    public  float m_timeout = 1.0f;
	
	// Update timer.
	private void Update ()
    {
        m_timer += Time.deltaTime;
	}

    // Change timeout from scripts in runtime.
    public void setTimeout(float arg_timeout)
    {
        m_timeout = arg_timeout;
    }

    // Check whether time is out for and reset the timer if true.
    public bool isTimeUp()
    {
        return (m_timer >= m_timeout) ? true : false;
    }

    public void resetTimer()
    {
        m_timer = 0.0f;
    }
}
