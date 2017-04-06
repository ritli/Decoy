using UnityEngine;
using System.Collections;

public class Decoy : MonoBehaviour, IKillable {

    public float m_timeTillDeath = 1f;
    float m_decayTimeElapsed = 0;

    PlayerState m_decoyState;

    public void Kill()
    {
        m_decoyState = PlayerState.isDead;
    }

    void DestroyObject()
    {
        Destroy(this);
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
        if (m_decayTimeElapsed > m_timeTillDeath)
        {
            Kill();
        }
    }
}
