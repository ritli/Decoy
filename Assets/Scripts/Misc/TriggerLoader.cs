using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerLoader : MonoBehaviour
{
    public enum Mode { Load, Unload };
    //if a scene is missing, add it to Sceneloader
    [Tooltip("Selects which scene will be processed. Use BaseScene or MainMenu on your own risk")]
    public SceneLoader.Scenes m_scene;

    [Tooltip("Decides if the selected scene will be loaded or unloaded.")]
    public Mode m_Mode;

    private bool m_playerInside = false;

    private void OnTriggerEnter(Collider other)
    {

        if(other.gameObject.tag == Tags.player && !m_playerInside)
        {
            m_playerInside = true; 
            if (m_Mode == Mode.Load)
                SceneLoader.LoadSceneAsync(m_scene);
            else
                SceneLoader.UnloadSceneAsync(m_scene);
        }
    }
     private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == Tags.player)
        {
            m_playerInside = false;
        }
    }
}
