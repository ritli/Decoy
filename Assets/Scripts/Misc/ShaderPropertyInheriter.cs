using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderPropertyInheriter : MonoBehaviour {

    [Tooltip("Mesh from which to inherit properties.")]
    public Renderer originalMesh;
    [Tooltip("Name of the property to inherit from the mesh. (Name is appended as _+name).")]
    public string propertyName;

    private Material m_inheritMat;
    private Material m_thisMat;

	// Get the material of inheritance mesh
	void Awake ()
    {
        propertyName = "_" + propertyName;
        try
        {
            m_inheritMat = originalMesh.material;
            m_thisMat = GetComponent<Renderer>().material;
        }
        catch
        {
            Debug.LogError("Failed to initiate materials.");
        }

	}

	void Update ()
    {
		if (m_thisMat.HasProperty(propertyName) && m_inheritMat.HasProperty(propertyName))
        {
            m_thisMat.SetFloat(propertyName, m_inheritMat.GetFloat(propertyName));
        }
	}
}
