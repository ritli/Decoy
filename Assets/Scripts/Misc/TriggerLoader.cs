using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TriggerLoader : MonoBehaviour
{
    public enum Mode { Load, Unload };
    //if a scene is missing, add it to Sceneloader
    [Tooltip("Selects which scene will be processed. Use BaseScene or MainMenu on your own risk")]
    public SceneLoader.Scenes m_scene;
    
    [Tooltip("Decides if the selected scene will be loaded or unloaded.")]
    public Mode m_Mode;

    private bool m_playerInside = false;
    private bool m_enabled = true;

    void EnableTrigger()
    {
        m_enabled = true;
    }

    private void OnTriggerEnter(Collider other)
    {

        if(other.gameObject.tag == Tags.player && !m_playerInside && m_enabled)
        {
            m_playerInside = true;
            if (m_Mode == Mode.Load) { 
                Invoke("EnableTrigger", 10f);
                m_enabled = false;
                SceneLoader.getInstance().LoadSceneAsync(m_scene);
            }
            else
                SceneLoader.getInstance().UnloadSceneAsync(m_scene);
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
