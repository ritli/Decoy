using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeLightActivator : ActivationObject {

    public float toValue;
    public float time;
    public Light light;

    IEnumerator Fade(float from, float to)
    {
        float currentTime = 0;

        while (currentTime < time)
        {
            light.intensity = Mathf.Lerp(from, to, currentTime / time);

            yield return new WaitForEndOfFrame();
            currentTime += Time.deltaTime;
        }
        light.intensity = toValue;
    }

    public override void activate()
    {
        StartCoroutine(Fade(light.intensity, toValue));
    }

    public override void deactivate()
    {
        throw new NotImplementedException();
    }

    public override bool isActivated()
    {
        throw new NotImplementedException();
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }
}
