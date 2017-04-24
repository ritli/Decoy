using UnityEngine;
using System.Collections;

[RequireComponent(typeof(ParticleSystem))]
public class ExplosionEvent : MonoBehaviour {

    ParticleSystem m_particleSystem;

	void Start () {

        m_particleSystem = GetComponent<ParticleSystem>();
    }
	
	void Update () {
	
	}

    void Explode()
    {

    }
}
