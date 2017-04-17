using UnityEngine;
using System.Collections;

public class AudioMovingNPC : MonoBehaviour
{
	[FMODUnity.EventRef]
	public string movingHit;

	[FMODUnity.EventRef]
	public string movingSpawn;

	[FMODUnity.EventRef]
	public string movingDeath;

	[FMODUnity.EventRef]
	public string movingKills;

	[FMODUnity.EventRef]
	public string movingFootstep;
	FMOD.Studio.EventInstance movingFootstepEv;

	void Awake()
	{
		//audioManager = GameObject.FindObjectOfType<AudioManager> ();
		//audioManager.audioMovingNPC = this;
		movingFootstepEv = FMODUnity.RuntimeManager.CreateInstance (movingFootstep);
	}

	void Update ()
	{
		//if (material == 1) 
			movingFootstepEv.setParameterValue ("Surface", 1.20f);


	}

	public void MovingNPCSpawned()
	{

		FMODUnity.RuntimeManager.PlayOneShot (movingSpawn);
		FMODUnity.RuntimeManager.AttachInstanceToGameObject (movingFootstepEv, GetComponent<Transform> (), GetComponent<Rigidbody> ());
		movingFootstepEv.start ();
		Debug.Log ("MovingNPCSpawned");
	}

	public void MovingNPCHit(int hitpoints)
	{
		
		FMODUnity.RuntimeManager.PlayOneShot (movingHit, transform.position);
		Debug.Log("MovingNPCHit - HitpointsRemaining: " + hitpoints);
	}

	public void MovingNPCKilledplayer()
	{
		FMODUnity.RuntimeManager.PlayOneShot (movingKills);
		movingFootstepEv.setParameterValue ("Death", 1f);
		Debug.Log("MovingNPCKilledplayer");
	}

	public void MovingNPCDied()
	{
		FMODUnity.RuntimeManager.PlayOneShot (movingDeath, transform.position);
		movingFootstepEv.setParameterValue ("Death", 1f);
		Debug.Log("MovingNPCDied");
	}

}
