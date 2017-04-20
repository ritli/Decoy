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

    bool m_maxReached;
    float m_tVal;

	void Start () {
        m_internalMax = m_max;
        m_internalMin = m_min;

        if (!m_lights[0])
        {
            m_lights[0] = GetComponent<Light>();
        }
	}
	
	void Update () {
        float intensity = 0;

        switch (m_Type)
        {
            case LightEffectType.Pulsating:
                
                intensity = Mathf.Lerp(m_min, m_max, m_tVal);

                break;
            case LightEffectType.Strobe:
                break;
            case LightEffectType.Flicker:
                break;
            default:
                break;
        }

        m_tVal += Time.deltaTime / m_time;

        if (m_tVal > 1)
        {
            float temp = m_internalMax;

            m_internalMax = m_internalMin;
            m_internalMin = m_internalMax;

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


