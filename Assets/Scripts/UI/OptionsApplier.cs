using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class OptionsApplier : MonoBehaviour
{

    public Toggle Asynctoggle;
    private Slider[] sliders;

	// Use this for initialization
	void Start ()
    {
        sliders = GetComponentsInChildren<Slider>();
        sliders[2].value = 0.5f;
	}
	
	// Update is called once per frame
	void Update ()
    {
        GameManager.SetAsyncLoad(Asynctoggle.isOn);
        GameManager.applySettings(sliders[0].value, sliders[1].value, sliders[2].value);
	}
}
