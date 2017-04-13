using UnityEngine;
using System.Collections;

public class AudioStationaryNPC : MonoBehaviour
{
	[FMODUnity.EventRef]
	public string stationaryShoot;
	FMOD.Studio.EventInstance stationaryShootEv;

	[FMODUnity.EventRef]
	public string stationaryRotate;
	FMOD.Studio.EventInstance stationaryRotateEv;

	[FMODUnity.EventRef]
	public string stationaryDie;

	[FMODUnity.EventRef]
	public string stationaryActivate;
	FMOD.Studio.EventInstance stationaryActivateEv;


	void Start ()
	{
		stationaryActivateEv = FMODUnity.RuntimeManager.CreateInstance (stationaryActivate);
		stationaryRotateEv = FMODUnity.RuntimeManager.CreateInstance (stationaryRotate);
		stationaryShootEv = FMODUnity.RuntimeManager.CreateInstance (stationaryShoot);



	}
		

	public void AudioStationaryNPCActivate()
	{
		FMODUnity.RuntimeManager.AttachInstanceToGameObject (stationaryActivateEv, GetComponent<Transform> (), GetComponent<Rigidbody> ());
		stationaryActivateEv.start ();
		Debug.Log ("StationaryNPCActivated");
	}

	public void AudioStationaryNPCDeactivate()
	{
		stationaryActivateEv.setParameterValue ("End", 1f);
		Debug.Log ("StationaryNPCDeactivated");
	}

	public void AudioStationaryNPCShoot()
	{
		//FMODUnity.RuntimeManager.PlayOneShot (stationaryShoot, transform.position);
		stationaryShootEv.set3DAttributes (FMODUnity.RuntimeUtils.To3DAttributes(transform.position));
		stationaryShootEv.start ();
		Debug.Log ("StationaryNPCShoot");
	}

	public void AudioStationaryNPCRotationStart()
	{
		FMODUnity.RuntimeManager.AttachInstanceToGameObject (stationaryRotateEv, GetComponent<Transform> (), GetComponent<Rigidbody> ());
		stationaryRotateEv.start ();
		Debug.Log ("StationaryNPCRotationStarted");
	}

	public void AudioStationaryNPCRotationStop()
	{
		stationaryRotateEv.triggerCue ();
		Debug.Log ("StationaryNPCRotationStopped");
	}

	public void AudioStationaryNPCDie()
	{
		stationaryShootEv.setParameterValue ("Die", 1f);
		stationaryActivateEv.setParameterValue ("End", 1f);
		stationaryRotateEv.triggerCue ();
		FMODUnity.RuntimeManager.PlayOneShot (stationaryDie, transform.position);
		Debug.Log("StationaryNPCDied");
	}
}
