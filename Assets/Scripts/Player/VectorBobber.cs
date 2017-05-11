using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VectorBobber : MonoBehaviour {

    public delegate void stepEvent();
    public stepEvent onStep;

    bool m_walkBob;
    

    private float bobSpeed = 0.2f;

    private Vector3 currentOffset = new Vector3(0, 0, 0);
    private bool stopping = false;
    private bool m_bobDown = false;
    private float m_bobAmount;

    private bool keepbobbing = false;
    private bool bobbingDone = true;

    private bool m_stepPlayed;

    public bool WalkBob
    {
        set
        {
            m_walkBob = value;
        }
    }

    // Initiate a bobbing coroutine with the given amount
    public void startBob(float bobAmount, bool loopBobbing)
    {
        m_bobAmount = bobAmount;
        keepbobbing = loopBobbing;

        if (Mathf.Sign(bobAmount) == -1)
        {
            m_bobDown = true;
        }

        bobbingDone = false;
        // Start bobbing offset
        StartCoroutine(gradualBob());
    }

    // Stop the current bobbing
    public void stopBob()
    {
        stopping = true;
    }

    // Coroutine that iterates the bobbing effect when it's been started
    IEnumerator gradualBob()
    {
        float timePassed = 0.0f;
        
        // Iterate the coroutine until it has "finished"
        while (!bobbingDone)
        {
            // Stop the routine if stopBob() has been called
            if (stopping)
            {
                stopping = false;
                bobbingDone = true;
                currentOffset = new Vector3(0, 0, 0);
                yield break;
            }
            // Update the offset by the speed that is specified
            timePassed += bobSpeed * Time.deltaTime;
            currentOffset.y = m_bobAmount * Mathf.Sin(timePassed);

            CheckStep(timePassed);

                // Stop the bobbing when the offset has returned to its origin
            if (currentOffset.y <= 0 && !m_bobDown
                || currentOffset.y >= 0 && m_bobDown)
            {
                if (!keepbobbing)
                    stopBob();
            }

            yield return null;
        }
    }

    void CheckStep(float timePassed)
    {
        if (m_walkBob)
        {
            if (Mathf.Sin(timePassed) < 0)
            {
                if (onStep != null && !m_stepPlayed)
                {
                    onStep();
                    m_stepPlayed = true;
                }
            }
            else
            {
                m_stepPlayed = false;
            }
        }

    }

    public Vector3 getOffset()
    {
        return currentOffset;
    }

    public bool isBobbing()
    {
        return !bobbingDone;
    }

    public bool isLooping()
    {
        return keepbobbing;
    }

    public void setBobSpeed(float speed)
    {
        bobSpeed = speed;
    }
}
