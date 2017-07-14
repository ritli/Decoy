using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeTextUpdater : MonoBehaviour {

    TMPro.TextMeshProUGUI text;

	void Start () {
        text = GetComponent<TMPro.TextMeshProUGUI>();

        text.text = "YOUR TIME WAS : " + GameManager.GetTimeElapsed();

    }	
}
