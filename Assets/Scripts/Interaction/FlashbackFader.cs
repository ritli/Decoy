using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashbackFader : MonoBehaviour {

    public SkinnedMeshRenderer[] fadingMeshes;
    private List<Material> m_fadingMats = new List<Material>();

    private void Awake()
    {
        foreach (SkinnedMeshRenderer r in fadingMeshes)
            foreach (Material m in r.materials)
                m_fadingMats.Add(m);
    }

    // Update is called once per frame
    void Update ()
    {
		foreach (Material m in m_fadingMats)
        {
            //m.color = new Color(m.color.r, m.color.g, m.color.b, 0.0f);
        }
	}
}
