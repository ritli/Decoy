using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightPulser : MonoBehaviour {

    [Tooltip("Determine the speed at which the lights' intensity alternates.")]
    public float pulseSpeed = 1.0f;
    [Tooltip("Determine the starting intensity.")]
    public float startIntensity = 1.0f;
    [Tooltip("Determine the end intensity.")]
    public float endIntensity = 1.0f;
    [Tooltip("Randomise the change between the given interval.")]
    public bool randomFlicker = false;

    private bool m_movingForward = true;
    private float m_targetIntensity;
    private Light m_light;

	// Use this for initialization
	void Awake ()
    {
        m_light = GetComponent<Light>();
        m_light.intensity = startIntensity;
        m_targetIntensity = startIntensity;
    }

    // Update is called once per frame
    void Update()
    {
        m_light.intensity = Mathf.MoveTowards(m_light.intensity, m_targetIntensity, pulseSpeed * Time.deltaTime);

        // Switch back and forth from the chosen intensitys.
        if (m_light.intensity == m_targetIntensity)
        {
            if (!randomFlicker)
            {
                if (m_movingForward)
                    m_targetIntensity = startIntensity;
                else
                    m_targetIntensity = endIntensity;
            }
            else
            {
                m_targetIntensity = Random.Range(startIntensity, endIntensity);
            }

            m_movingForward = !m_movingForward;
        }
            
    }
}
