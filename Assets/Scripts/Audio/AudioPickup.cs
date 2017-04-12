using UnityEngine;
using System.Collections;

public class AudioPickup : MonoBehaviour
{
	[FMODUnity.EventRef]
	public string playerPickup;

	public void AudioPickupTaken()
	{
		FMODUnity.RuntimeManager.PlayOneShot (playerPickup);
		Debug.Log("PickupTaken");
	}
}
