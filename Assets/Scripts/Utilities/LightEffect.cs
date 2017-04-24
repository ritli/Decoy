using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum LightEffectType
{
    Pulsating, Strobe, Flicker
}

public class LightEffect : MonoBehaviour {

    public LightEffectType m_Type;
    public Light[] m_lights;

    public float m_time;
    public float m_max;
    public float m_min;

    float m_internalMax;
    float m_internalMin;
    float m_internalRandomTime;

    bool m_maxReached;
    float m_tVal;


	void Start () {
        m_internalMax = m_max;
        m_internalMin = m_min;

        if (!m_lights[0])
        {
            m_lights = new Light[1];

            m_lights[0] = GetComponent<Light>();
        }
	}
	
	void Update () {
        float intensity = 0;

        m_tVal += Time.deltaTime / m_time;

        switch (m_Type)
        {
            case LightEffectType.Pulsating:
                
                intensity = Mathf.Lerp(m_internalMin, m_internalMax, m_tVal);

                break;
            case LightEffectType.Strobe:

                if (m_tVal > m_time)
                {
                    intensity = m_internalMax;
                }

                break;
            case LightEffectType.Flicker:

                if (m_tVal > m_internalRandomTime)
                {
                    m_internalRandomTime = Random.Range(0, m_time);
                    float randIntensity = Random.Range(-1, 1);

                    intensity = m_internalMax + randIntensity;
                }


                break;
            default:
                break;
        }

        if (m_tVal > 1)
        {
            float temp = m_internalMax;

            m_internalMax = m_internalMin;
            m_internalMin = temp;

            m_tVal = 0;
        }

        ApplyIntensity(intensity);

    }
    void ApplyIntensity(float intensity)
    {
        for (int i = 0; i < m_lights.Length; i++)
        {
            m_lights[i].intensity = intensity;
        }
    }

}


