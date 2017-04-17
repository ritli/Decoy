using UnityEngine;
using System.Collections;

public class AudioCheckpoint : MonoBehaviour
{
	[FMODUnity.EventRef]
	public string Checkpoint;
	
	public void AudioCheckpointTaken()
	{
		FMODUnity.RuntimeManager.PlayOneShot (Checkpoint);
		Debug.Log("CheckpointTaken");
	}
}
