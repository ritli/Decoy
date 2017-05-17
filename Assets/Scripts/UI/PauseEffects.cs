using System.Collections;
using System.Collections.Generic;
using UnityStandardAssets.ImageEffects;
using UnityEngine;

public class PauseEffects : MonoBehaviour {

    BlurOptimized m_Blur;
	// Use this for initialization
	void Start () {


        m_Blur = GetComponent<BlurOptimized>();
		m_Blur.enabled = false;
    }
    private void OnEnable()
    {
        PauseManager.OnPause += doEffect;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= doEffect;
    }
    void doEffect(bool isPaused)
    {
        m_Blur.enabled = isPaused;
    }
}
