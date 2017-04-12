using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class Checkpoint : MonoBehaviour {

    [Tooltip("place an empty gameobject as a child to use a forced spawnposition. \nIf not the Checkpoints center will be used.")]
    public Transform m_SpawnPosition;
    private int m_Index = 0;

	// Use this for initialization
	void Start () 
    {
        
        CheckpointEditorManager.UpdateCheckpoints();
        //loads forced position if one is present
	    //m_SpawnPosition = GetComponentInChildren<Transform>();
        //set spawn to checkpoint center
        if (m_SpawnPosition == null)
            m_SpawnPosition = transform;

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

            PlayerPrefs.SetFloat("PositionX", m_SpawnPosition.position.x);
            PlayerPrefs.SetFloat("PositionY", m_SpawnPosition.position.y);
            PlayerPrefs.SetFloat("PositionZ", m_SpawnPosition.position.z);

            PlayerPrefs.SetFloat("RotationX", m_SpawnPosition.rotation.x);
            PlayerPrefs.SetFloat("RotationY", m_SpawnPosition.rotation.y);
            PlayerPrefs.SetFloat("RotationZ", m_SpawnPosition.rotation.z);
            PlayerPrefs.SetFloat("RotationW", m_SpawnPosition.rotation.w);

            PlayerPrefs.Save();
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
