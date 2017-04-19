using UnityEngine;
using System.Collections;
using System;



[ExecuteInEditMode]
public class CheckpointEditorManager : MonoBehaviour {

    public bool m_ClearPlayerPrefs = false;
    public bool m_alwaysClearPrefs = false;
    public static CheckpointEditorManager instance;
    public string m_NamePrefix = "Checkpoint_";
    // Use this for initialization

    private void Start()
    {
        m_ClearPlayerPrefs = false;
    }

	void OnEnable()
    {
        instance = this;
    }

    void Awake()
    {
        m_ClearPlayerPrefs = m_alwaysClearPrefs;
    }
	
	public static void UpdateCheckpoints () {

	    Checkpoint[] checkpoints = FindObjectsOfType<Checkpoint>();
        int index = checkpoints.Length-1;
        //set name and index on the checkpoint
        foreach(Checkpoint chkpt in checkpoints)
        {
            chkpt.gameObject.name = instance.m_NamePrefix;
            chkpt.gameObject.name += index;
            chkpt.setIndex(index--);

            #region Oldmethod
            //string prefix;
            //try 
            //{ 
            //    prefix = chkpt.gameObject.name.Substring(0, CheckpointEditorManager.instance.m_NamePrefix.Length-1);
            //}
            //catch(IndexOutOfRangeException exception)
            //{
            //    Debug.LogError("Incorrect prefixon Checkpoint: " + exception.Message);
            //    return;
            //}
            //if (prefix != CheckpointEditorManager.instance.m_NamePrefix)
            //{
            //    chkpt.gameObject.name = CheckpointEditorManager.instance.m_NamePrefix;
            //}
            //try
            //{
            //    index = int.Parse(chkpt.gameObject.name.Substring(CheckpointEditorManager.instance.m_NamePrefix.Length));
            //}
            //catch(FormatException exception)
            //{
            //    Debug.LogWarning("Incorrect index on Checkpoint: "+exception.Message);
            //    chkpt.gameObject.name = chkpt.gameObject.name + --previousIndex;
            //    chkpt.setIndex(previousIndex);
            //    continue;
            //}
            //if(previousIndex == index+1)
            //{
            //    previousIndex = index;
            //}
            //else
            //{
            //    chkpt.gameObject.name = chkpt.gameObject.name + --previousIndex;
            //    chkpt.setIndex(previousIndex);
            //}
            #endregion
        }
	}
    void Update()
    {
        if(m_ClearPlayerPrefs)
        {
            m_ClearPlayerPrefs = false;

            PlayerPrefs.DeleteAll();
            print("DELETING PREFS");
        }
    }
}
