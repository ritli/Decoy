using UnityEngine;
using System.Collections;
using System;



[ExecuteInEditMode]
public class CheckpointEditorManager : MonoBehaviour {

    public static CheckpointEditorManager instance;
    public string m_NamePrefix = "Checkpoint_";
	// Use this for initialization
	void Start () {
        instance = this;
	}
	
	// Update is called once per frame
	public static void UpdateCheckpoints () {

	    Checkpoint[] checkpoints = FindObjectsOfType<Checkpoint>();
        int previousIndex = checkpoints.Length;
        foreach(Checkpoint chkpt in checkpoints)
        {
            string prefix;
            try 
            { 
                prefix = chkpt.gameObject.name.Substring(0, CheckpointEditorManager.instance.m_NamePrefix.Length-1);
            }
            catch(IndexOutOfRangeException exception)
            {
                Debug.LogError("Incorrect index on Checkpoint: " + exception.Message);
                return;
            }
            if (prefix != CheckpointEditorManager.instance.m_NamePrefix)
            {
                chkpt.gameObject.name = CheckpointEditorManager.instance.m_NamePrefix;
            }
            int index = 0;
            try
            {
                index = int.Parse(chkpt.gameObject.name.Substring(CheckpointEditorManager.instance.m_NamePrefix.Length));
            }
            catch(FormatException exception)
            {
                Debug.LogWarning("Incorrect index on Checkpoint: "+exception.Message);
                chkpt.gameObject.name = chkpt.gameObject.name + --previousIndex;
                chkpt.setIndex(previousIndex);
                continue;
            }
            if(previousIndex == index+1)
            {
                previousIndex = index;
            }
            else
            {
                chkpt.gameObject.name = chkpt.gameObject.name + --previousIndex;
                chkpt.setIndex(previousIndex);
            }

        }
	}
}
