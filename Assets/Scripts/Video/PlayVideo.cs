using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
using UnityEngine.UI;
using UnityStandardAssets.CrossPlatformInput;

[System.Serializable]
public struct Video
{
	public VideoClip videoClip;
	public bool isSkippable;
}
	
public class PlayVideo : MonoBehaviour {
	
	// Scene to load when video is done
	public SceneLoader.Scenes m_SelectedScene;

	//Raw Image to Show Video Images [Assign from the Editor]
	public RawImage image;

	//Videos To Play [Assign from the Editor]
	public Video[] videos;

	private VideoPlayer videoPlayer;
	private VideoSource videoSource;

	//Audio
	private AudioSource audioSource;

	// Use this for initialization
	void Start()
	{
		Application.runInBackground = true;
		GetComponent<RectTransform>().sizeDelta = new Vector2(Screen.width, Screen.height);
		StartCoroutine(playVideo());
        //GetComponent<RectTransform>().anchorMax = new Vector2(Screen.width, Screen.height);
        GameManager.GetPlayer().m_MouseLook.SetCursorLock(true);
	}

	IEnumerator playVideo()
	{
		// Unload previous scene
		SceneLoader.getInstance().UnloadSceneAsync(SceneLoader.Scenes.MainMenu);

		//Add VideoPlayer to the GameObject
		videoPlayer = gameObject.AddComponent<VideoPlayer>();

		//Add AudioSource
		audioSource = gameObject.AddComponent<AudioSource>();

		//Disable Play on Awake for both Video and Audio
		//videoPlayer.playOnAwake = false;
		//audioSource.playOnAwake = false;

		//We want to play from video clip not from url
		videoPlayer.source = VideoSource.VideoClip;

		//Set Audio Output to AudioSource
		videoPlayer.audioOutputMode = VideoAudioOutputMode.AudioSource;

		//Assign the Audio from Video to AudioSource to be played
		videoPlayer.EnableAudioTrack(0, true);
		videoPlayer.SetTargetAudioSource(0, audioSource);

//		//Prepare and play all available videos
		foreach (Video video in videos)
		{
			videoPlayer.clip = video.videoClip;
			videoPlayer.Prepare();
			
			//Wait until video is prepared
			while (!videoPlayer.isPrepared)
			{
				Debug.Log("Preparing Video");
				yield return null;
			}

			Debug.Log("Done Preparing Video");
			
			//Assign the Texture from Video to RawImage to be displayed
			image.texture = videoPlayer.texture;
			
			//Play Video and Sound
			videoPlayer.Play();
			audioSource.Play();

			ulong totalFrames = videoPlayer.frameCount;
			
			Debug.Log("Playing Video");
			while (videoPlayer.isPlaying)
			{
				if (CrossPlatformInputManager.GetButtonDown("Cancel") && video.isSkippable ||
					(ulong)videoPlayer.frame > totalFrames - 10) // Stop video if current frame is second to last frame
				{
					videoPlayer.Stop();
					break;
				}
				Debug.LogWarning("Video Time: " + Mathf.FloorToInt((float)videoPlayer.time));
				yield return null;
			}
			Debug.Log("Done Playing video: " + video.videoClip.name);
		}

		// Load next scene
		SceneLoader.getInstance().InitialGameLoad(m_SelectedScene);
		GameManager.GetPlayer().gameObject.SetActive(true);
		GameManager.GetPlayer().ResetPlayer();
		SceneLoader.getInstance().UnloadSceneAsync(SceneLoader.Scenes.IntroCutscene);
	}
}