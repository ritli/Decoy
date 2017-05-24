using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ContinueUpdater : MonoBehaviour
{
    private Button m_ContinueButton;

	// Use this for initialization
	void Start ()
    {
        m_ContinueButton = GetComponent<Button>();

		if(!Checkpoint.isPreviouslySaved())
        {
            m_ContinueButton.interactable = false;
        }
	}
}
