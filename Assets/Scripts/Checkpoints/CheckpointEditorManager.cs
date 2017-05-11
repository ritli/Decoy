using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;


#if UNITY_EDITOR
[ExecuteInEditMode]
#endif
public class CheckpointEditorManager : MonoBehaviour {

    public bool m_ClearPlayerPrefs = false;
    public bool m_alwaysClearPrefs = false;
    public bool m_dynamicallyUpdateCheckpoints = true;
    public bool m_updateCheckpoints = false;
    public bool m_updateList = false;
    public static CheckpointEditorManager instance;
    public string m_NamePrefix = "Checkpoint_";
    public List<Checkpoint> m_checkpoints;
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

    public static void UpdateCheckpoints() {

        bool listUpdated = false;

        if (instance.m_dynamicallyUpdateCheckpoints || instance.m_updateCheckpoints) {

            instance.m_updateCheckpoints = false;

            List<Checkpoint> checkpointlist = new List<Checkpoint>();
            Checkpoint[] checkpoints = FindObjectsOfType<Checkpoint>();

            for (int i = 0; i < checkpoints.Length; i++)
            {
                if (instance.m_checkpoints.Count == 0)
                {
                    listUpdated = true;

                    break;
                }


                if (instance.m_checkpoints[i] != checkpoints[i])
                {
                    listUpdated = true;
                    
                    break;
                }
            }

            if (listUpdated)
            {
                foreach (Checkpoint c in checkpoints)
                {
                    checkpointlist.Add(c);
                }

            }

            int index = checkpoints.Length - 1;

            UpdateList(checkpointlist, index);

            instance.m_checkpoints = checkpointlist;

        }
	}

    static void UpdateList(List<Checkpoint> checkpoints, int index)
    {
        //set name and index on the checkpoint
        foreach (Checkpoint chkpt in checkpoints)
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
        if (m_updateList)
        {
            UpdateList(instance.m_checkpoints, instance.m_checkpoints.Count - 1);
            m_updateList = false;
        }

        if (m_updateCheckpoints)
        {
            UpdateCheckpoints();
        }

        if(m_ClearPlayerPrefs)
        {
            m_ClearPlayerPrefs = false;

            PlayerPrefs.DeleteAll();
            print("DELETING PREFS");
        }
    }
}
