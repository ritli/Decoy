using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using System;

public class ButtonAudioPlay : MonoBehaviour, IPointerEnterHandler, IPointerClickHandler
{
    [FMODUnity.EventRef]
    public string clickSound;
    [FMODUnity.EventRef]
    public string hoverSound;

    public void OnPointerClick(PointerEventData eventData)
    {
        FMODUnity.RuntimeManager.PlayOneShot(clickSound);
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        FMODUnity.RuntimeManager.PlayOneShot(hoverSound);
    }

}
