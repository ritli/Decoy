using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public struct Event
{
    [Tooltip("Name of event")]
    public string eventName;
    [Tooltip("The position to move to")]
    public Transform movePosition;
    [Tooltip("Determine how fast the movement is performed")]
    public float moveSpeed;
    [Tooltip("Degrees to turn")]
    public float rotation;
    [Tooltip("Name the animation state to be played")]
    public string stateToPlay;
    [Tooltip("Determine time until event is executed")]
    public float timeUntilEvent;
}

[RequireComponent(typeof(Timer))]
public class ScriptedAnimatorActivation : ActivationObject {

    // Privates
    private Animator m_animator;
    private List<string> animStates;
    private bool startedScriptedEvent = false;

    // Publics
    public Event[] events;

    public override void activate()
    {
        throw new NotImplementedException();
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

	// Use this for initialization
	void Awake ()
    {
        m_animator = GetComponent<Animator>();

        //m_animator.
	}
	
	// Update is called once per frame
	void Update ()
    {
        // JUST A TEST
        m_animator.Play("Scientist Appear Turn");
	}
}
