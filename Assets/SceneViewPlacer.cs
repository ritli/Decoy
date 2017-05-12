#if UNITY_EDITOR
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

//[ExecuteInEditMode]
public class SceneViewPlacer : MonoBehaviour {

    public bool m_placePlacerAtSceneCamera;
    Transform camera;


    public Vector3 camPos;
    Quaternion rotation;

    void OnDrawGizmos()
    {
        camPos = SceneView.lastActiveSceneView.camera.transform.position;
        rotation = SceneView.lastActiveSceneView.camera.transform.rotation;
    }

    void Start()
    {

        if (m_placePlacerAtSceneCamera)
        {
            FindObjectOfType<PlayerController>().transform.position = camPos;
            FindObjectOfType<PlayerController>().transform.rotation = Quaternion.Euler(rotation.eulerAngles.x, 0, 0);
        }
    }

    void Update()
    {

    }

}
#endif
