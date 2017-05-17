using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleController : MonoBehaviour {

    ParticleSystem m_particleSystem;

    bool m_busy;

	void Start ()
    {
        if (m_particleSystem = GetComponent<ParticleSystem>()) ;
        else if (m_particleSystem = GetComponentInChildren<ParticleSystem>()) ;
	}
	
    public void LerpAlpha(float a, float b, float time)
    {
        if (!m_busy)
        {
            m_busy = true;

            StartCoroutine(LerpOverTime(a, b, time));
        }

    }

    public void PlayBurst(int count)
    {
        m_particleSystem.Emit(count);
    }

    IEnumerator LerpOverTime(float a, float b, float time)
    {
        float timeElapsed = 0;
        Color c = m_particleSystem.main.startColor.color;

        while (timeElapsed > time)
        {
            float alpha = Mathf.Lerp(a, b, timeElapsed / time);

            m_particleSystem.startColor = new Color(c.r, c.g, c.b, alpha);

            timeElapsed += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }

        m_particleSystem.startColor = new Color(c.r, c.g, c.b, b);

        m_busy = false;
    }

    void Update () {
		
	}
}
