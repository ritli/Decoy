using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashbackFader : ActivationObject {

    [Tooltip("The name of the float value in the material that is to be changed.")]
    public string fadeValueName;
    public float fadingSpeed = 1.0f;
    public bool invisibleOnAwake = true;
    [Tooltip("List of all meshes to be faded.")]
    public SkinnedMeshRenderer[] fadingMeshes;

    private List<Material> m_fadingMats = new List<Material>();
    private bool isFading = false;
    private float fadingTarget;

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
        fadeValueName = "_" + fadeValueName;

        foreach (SkinnedMeshRenderer r in fadingMeshes)
            foreach (Material m in r.materials)
            {
                m_fadingMats.Add(m);
                if (!m.HasProperty(fadeValueName))
                    print("Material has no property " + fadeValueName);
            }
        

        if (invisibleOnAwake)
            foreach (Material m in m_fadingMats)
                if (m.HasProperty(fadeValueName))
                {
                    print("Seting fade amount");
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
                        isFading = false;
                }
            }
        }
	}
}
