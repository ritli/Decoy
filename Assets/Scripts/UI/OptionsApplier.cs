using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class OptionsApplier : MonoBehaviour
{

    private Slider[] sliders;

	// Use this for initialization
	void Start ()
    {
        sliders = GetComponentsInChildren<Slider>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        GameManager.applySettings(sliders[0].value, sliders[1].value, sliders[2].value);
	}
}
