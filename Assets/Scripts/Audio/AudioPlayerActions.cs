using UnityEngine;
using System.Collections;

public class AudioPlayerActions : MonoBehaviour
{
	public bool showFootstepDebugMessages = false;

	[FMODUnity.EventRef]
	public string playerShoot;

	[FMODUnity.EventRef]
	public string playerSpawn;

	[FMODUnity.EventRef]
	public string playerDie;

	[FMODUnity.EventRef]
	public string playerFootstep;
	FMOD.Studio.EventInstance playerFootstepEv;

	[FMODUnity.EventRef]
	public string playerJump;

	[FMODUnity.EventRef]
	public string playerWin;

	[FMODUnity.EventRef]
	public string playerLand;
	FMOD.Studio.EventInstance playerLandEv;


	public void PlayFootstep(int material)
	{
		playerFootstepEv = FMODUnity.RuntimeManager.CreateInstance (playerFootstep);
		if (!showFootstepDebugMessages)
		{
			return;
		}
		else
		{
			
			Debug.Log ("PlayerFootstep - Material: " + material);
		}

		if (material == 1)
		{	
			playerFootstepEv.setParameterValue ("Surface", 1f);
			playerFootstepEv.start ();
		}
		if (material == 2)
		{	
			playerFootstepEv.setParameterValue ("Surface", 3f);
			playerFootstepEv.start ();
		}
		if (material == 3)
		{	
			playerFootstepEv.setParameterValue ("Surface", 2f);
			playerFootstepEv.start ();
		}
		if (material == 4) 
		{	
			playerFootstepEv.setParameterValue ("Surface", 4f);
			playerFootstepEv.start ();
		}
	
	}

	public void PlayLand (int material)
	{
		playerLandEv = FMODUnity.RuntimeManager.CreateInstance (playerLand);
	

		if (!showFootstepDebugMessages)
		{
			return;
		}
		else
		{

			Debug.Log ("PlayerLand - Material: " + material);
		}

		if (material == 1)
		{	
			playerLandEv.setParameterValue ("Surface", 1f);
			playerLandEv.start ();

		}
		if (material == 2)
		{	
			playerLandEv.setParameterValue ("Surface", 3f);
			playerLandEv.start ();
		}
		if (material == 3)
		{	
			playerLandEv.setParameterValue ("Surface", 2f);
			playerLandEv.start ();
		}
		if (material == 4) 
		{	
			playerLandEv.setParameterValue ("Surface", 4f);
			playerLandEv.start ();
		}

	}

	public void PlayJump (int material)
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerJump);
		Debug.Log ("PlayerJumped - Material: " + material);
	}

	public void PlaySpawn()
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerSpawn);
		Debug.Log ("PlayerSpawned");
	}

	public void PlayShoot()
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerShoot);
		Debug.Log ("PlayerShoot");
	}

	public void PlayerDied()
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerDie);
		Debug.Log ("PlayerDied");
	}

	public void PlayerWon(float waitTime)
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerWin);
		Debug.Log ("PlayerWon - Waiting " + waitTime + " seconds");
	}
}

