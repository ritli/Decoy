using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArmCamera : MonoBehaviour {

    Camera m_MainCamera;
    Camera m_Camera;

	void Start () {
        m_MainCamera = Camera.main.GetComponent<Camera>();
        m_Camera = GetComponent<Camera>();
    }
	
	void Update () {
        m_Camera.fieldOfView = m_MainCamera.fieldOfView;
    }
}
