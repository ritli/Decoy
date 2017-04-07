using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class Checkpoint : MonoBehaviour {

    public Transform m_ForcedSpawn;
    public bool m_UseForcedSpawn = true;
    private int m_Index = 0;
    private bool m_Used = false;
	// Use this for initialization
	void Start () 
    {
        CheckpointEditorManager.UpdateCheckpoints();
	    m_ForcedSpawn = GetComponentInChildren<Transform>();
	}
    public void setIndex(int newIndex)
    {
        m_Index = newIndex;
    }
    void OnTriggerEnter(Collider collider)
    {
        
        if(collider.transform.gameObject.tag == Tags.player)
        {
            if (m_UseForcedSpawn)
            {
                PlayerPrefs.SetFloat("spawnX", m_ForcedSpawn.position.x);
                PlayerPrefs.SetFloat("spawnY", m_ForcedSpawn.position.y);
                PlayerPrefs.SetFloat("spawnZ", m_ForcedSpawn.position.z);
            }
            else
            {
                PlayerPrefs.SetFloat("spawnX", collider.transform.position.x);
                PlayerPrefs.SetFloat("spawnY", collider.transform.position.y);
                PlayerPrefs.SetFloat("spawnZ", collider.transform.position.z);
            }
            PlayerPrefs.Save();
            m_Used = true;
        }
    }
    public static Vector3 getLatestSave()
    {
        Vector3 spawnposition = new Vector3(PlayerPrefs.GetFloat("spawnX"), PlayerPrefs.GetFloat("spawnY"), PlayerPrefs.GetFloat("spawnZ"));
        return spawnposition;
    }
}
