using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Timer), typeof(PlaySoundActivation))]
public class FlashbackFader : ActivationObject {

    [Tooltip("The name of the float value in the material that is to be changed.")]
    public string fadeValueName;
    public float fadingSpeed = 1.0f;
    public bool invisibleOnAwake = true;
    [Tooltip("Determine if the fading happens only once.")]
    public bool fadeOnce = true;
    [Tooltip("List of all meshes to be faded.")]
    public SkinnedMeshRenderer[] fadingMeshes;
    [Tooltip("Time before the animation is played. (Sound plays immediately)")]
    public float animationDelay = 0.0f;
    [Tooltip("Disable the audioplayer from being used.")]
    public bool disableSound = false;

    private bool animationInitiated = false;

    private List<Material> m_fadingMats = new List<Material>();
    private bool isFading = false;
    private bool finishedFading = false;
    private float fadingTarget;
    private AnimationActivation m_animation;

    Timer m_timer;
    PlaySoundActivation m_soundPlayer;

    // Set the animationdelay for all conserned animations
    public void setAnimationdelay(float delay)
    {
        animationDelay = delay;
        m_timer.setTimeout(animationDelay);
    }

    // Fade in
    public override void activate()
    {
        isFading = true;
        fadingTarget = 1.0f;
    }

    // Fade out
    public override void deactivate()
    {
        isFading = true;
        fadingTarget = 0.0f;
    }

    public override bool isActivated()
    {
        return isFading;
    }

    protected override void checkActivationEvent(int index)
    {
        // Make all meshes invisible if checked
        if (checkIndex <= index)
        {
            foreach (Material m in m_fadingMats)
            {
                m.SetFloat(fadeValueName, 0.0f);
            }
            isFading = false;
        }
    }

    private void Awake()
    {
        m_timer = GetComponent<Timer>();
        if (m_timer == null)
            Debug.LogError("No timer found on FlashbackFader");
        else
        {
            m_timer.setTimeout(animationDelay);
        }

        m_soundPlayer = GetComponent<PlaySoundActivation>();
        if (m_soundPlayer == null)
            Debug.LogError("No PlaySoundActivation found on FlashbackFader");

        fadeValueName = "_" + fadeValueName;
        m_animation = GetComponent<AnimationActivation>();

        if (m_animation == null)
            Debug.LogError("No AnimationActivation attached to object.");

        foreach (SkinnedMeshRenderer r in fadingMeshes)
            foreach (Material m in r.materials)
            {
                m_fadingMats.Add(m);
                if (!m.HasProperty(fadeValueName))
                    Debug.LogError("Material has no property " + fadeValueName);
            }
        

        if (invisibleOnAwake)
            foreach (Material m in m_fadingMats)
                if (m.HasProperty(fadeValueName))
                {
                    m.SetFloat(fadeValueName, 0.0f);
                }
    }

    // Update is called once per frame
    void Update ()
    {
        if (isFading)
        {
            // Move the fadingvalue of all targeted materials towards the given value.
            foreach (Material m in m_fadingMats)
            {
                if (m.HasProperty(fadeValueName))
                {
                    m.SetFloat(fadeValueName, Mathf.MoveTowards(m.GetFloat(fadeValueName), fadingTarget, fadingSpeed * Time.deltaTime));

                    if (m.GetFloat(fadeValueName) == fadingTarget)
                    {
                        isFading = false;
                        finishedFading = true;
                        
                        // Start sound and wait for animation.
                        if (!animationInitiated && fadingTarget == 1.0f)
                        {
                            animationInitiated = true;
                            m_timer.resetTimer();

                            if (!disableSound)
                                m_soundPlayer.activate();
                        }
                    }
                }
            }
        }
        else if (!isFading && fadingTarget == 1.0f && m_timer.isTimeUp() && animationInitiated)
        {
            m_animation.activate();
            animationInitiated = false;
        }
        else if (!m_animation.isActivated() && finishedFading && m_timer.isTimeUp())
        {
            finishedFading = false;
            deactivate();
        }
	}
}
