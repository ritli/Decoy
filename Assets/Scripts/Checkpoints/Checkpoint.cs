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
        print("Checkpoint index: " + m_Index);
	}
    void OnDisable()
    {
        CheckpointEditorManager.UpdateCheckpoints();
    }
    public void setIndex(int newIndex)
    {
        m_Index = newIndex;
    }
    void OnTriggerEnter(Collider collider)
    {
        
        if(collider.transform.gameObject.tag == Tags.player && getReachedCheckpoint() < m_Index)
        {
            PlayerPrefs.SetInt("CheckpointIndex", m_Index);
            print("Index set to " + m_Index);

            if (m_UseForcedSpawn)
            {
                

                PlayerPrefs.SetFloat("PositionX", m_ForcedSpawn.position.x);
                PlayerPrefs.SetFloat("PositionY", m_ForcedSpawn.position.y);
                PlayerPrefs.SetFloat("PositionZ", m_ForcedSpawn.position.z);

                PlayerPrefs.SetFloat("RotationX", m_ForcedSpawn.rotation.x);
                PlayerPrefs.SetFloat("RotationY", m_ForcedSpawn.rotation.y);
                PlayerPrefs.SetFloat("RotationZ", m_ForcedSpawn.rotation.z);
                PlayerPrefs.SetFloat("RotationW", m_ForcedSpawn.rotation.w);

            }
            else
            {
                PlayerPrefs.SetFloat("PositionX", collider.transform.position.x);
                PlayerPrefs.SetFloat("PositionY", collider.transform.position.y);
                PlayerPrefs.SetFloat("PositionZ", collider.transform.position.z);

                PlayerPrefs.SetFloat("RotationX", collider.transform.rotation.x);
                PlayerPrefs.SetFloat("RotationY", collider.transform.rotation.y);
                PlayerPrefs.SetFloat("RotationZ", collider.transform.rotation.z);
                PlayerPrefs.SetFloat("RotationW", collider.transform.rotation.w);
            }
            PlayerPrefs.Save();
            m_Used = true;
        }
    }
    public static bool isPreviouslySaved()
    {
        if(PlayerPrefs.HasKey("PositionX"))
        {
            return true;
        }
        return false;
    }
    public static Vector3 getSavedPlayerPosition()
    {
        print("Position acquired");
        Vector3 spawnPosition = new Vector3(PlayerPrefs.GetFloat("PositionX"), PlayerPrefs.GetFloat("PositionY"), PlayerPrefs.GetFloat("PositionZ"));
        
        return spawnPosition;
    }
    public static Quaternion getSavedPlayerRotation()
    {
        Quaternion spawnRotation = new Quaternion(PlayerPrefs.GetFloat("RotationX"), PlayerPrefs.GetFloat("RotationY"), PlayerPrefs.GetFloat("RotationZ"), PlayerPrefs.GetFloat("RotationW"));
        return spawnRotation;   
    }
    public int getReachedCheckpoint()
    {
        if (PlayerPrefs.HasKey("CheckpointIndex"))
        {
            return PlayerPrefs.GetInt("CheckpointIndex");
        }
        return -1;
    }
}
