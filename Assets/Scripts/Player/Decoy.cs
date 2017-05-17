using UnityEngine;
using System.Collections;

using System.Collections.Generic;

public class Decoy : MonoBehaviour, IKillable {

    [Tooltip("Determine the time until the decoy starts to dissolve.")]
    public float m_timeTillDeath = 1f;
    [Tooltip("Determine the time it takes for the decoy to dissolve.")]
    public float m_dissolveTime = 1f;
    public SkinnedMeshRenderer m_renderer;
    float m_decayTimeElapsed = 0;
    List<Material> fadingMats = new List<Material>();

    FMOD_StudioEventEmitter m_emitter;

    private bool m_dissolving = false;

    PlayerState m_decoyState;
    PlayerState m_stateBeforePause;

    private void Awake()
    {
        foreach (Material mat in m_renderer.materials)
        {
            fadingMats.Add(mat);
        }

        m_emitter = GetComponent<FMOD_StudioEventEmitter>();
    }

    private void OnEnable()
    {
        PauseManager.OnPause += pauseDecoy;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pauseDecoy;
    }

    public void Kill()
    {
        m_decoyState = PlayerState.isDead;
    }

    void DestroyObject()
    {
        Destroy(gameObject);
    }
	
	void Update () {

        switch (m_decoyState)
        {
            case PlayerState.isAlive:
                DecayUpdate();
                break;
            case PlayerState.isDead:
                Invoke("DestroyObject", 0.1f);
                break;
            case PlayerState.isPause:
                break;
            default:
                break;
        }
    }

    void DecayUpdate()
    {
        m_decayTimeElapsed += Time.deltaTime;

        // Count the time until the decay should start decaying.
        if (m_decayTimeElapsed > m_timeTillDeath && !m_dissolving)
        {
            m_dissolving = true;
            m_decayTimeElapsed = 0.0f;
        }

        if (m_dissolving)
        {
            // Change dissolve variable on the shader in order to gradually decay the decoy
            foreach (Material m in fadingMats)
            {
                if (m.HasProperty("_Dissolveamount"))
                    m.SetFloat("_Dissolveamount", Mathf.Clamp01(m_decayTimeElapsed / m_dissolveTime));

                // When the shader has fully "dissolved", kill the decoy
                if (m.GetFloat("_Dissolveamount") == 1)
                    Kill();
            }
        }
    }

    void pauseDecoy(bool isPaused)
    {
        if(m_decoyState == PlayerState.isPause)
        {
            m_decoyState = m_stateBeforePause;
        }
        else
        {
            m_stateBeforePause = m_decoyState;
            m_decoyState = PlayerState.isPause;
        }
    }
    
}
