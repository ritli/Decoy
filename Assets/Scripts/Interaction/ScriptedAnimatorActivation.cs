using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ScientistState { Aiming, AppearTurn, Fibble, Idle, RemoveAndLeave, Walk };

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
    [Tooltip("Choose the animation state to be played")]
    public  ScientistState stateToPlay;
    [Tooltip("Determine time until event is executed")]
    public float timeUntilEvent;
}

[RequireComponent(typeof(Timer))]
public class ScriptedAnimatorActivation : ActivationObject {

    // Privates
    private Animator m_animator;
    private ScientistState currentState;
    private bool startedScriptedEvent = false;
    private Timer m_timer;
    private int currentIndex = 0;

    // Movement and Rotation vars
    private bool m_isMoving = false;
    private Vector3 m_targetPosition = new Vector3(0, 0, 0);
    private bool m_isRotating = false;

    // Publics
    public ScientistState defaultState;
    public Event[] events;

    public override void activate()
    {
        startedScriptedEvent = true;
    }

    public override void deactivate()
    {
        startedScriptedEvent = false;
    }

    public override bool isActivated()
    {
        return startedScriptedEvent;
    }

    protected override void checkActivationEvent(int index)
    {
        throw new NotImplementedException();
    }

	// Use this for initialization
	void Awake ()
    {
        m_animator = GetComponent<Animator>();
        if (m_animator == null)
            Debug.LogError("Animator is null");

        m_timer = GetComponent<Timer>();
        if (m_timer == null)
            Debug.LogError("Timer is null");

        // Initiate and play the default state.
        currentState = defaultState;
        playState(currentState);
	}

    private void Start()
    {
        m_timer.setTimeout(events[currentIndex].timeUntilEvent);
        m_timer.resetTimer();
    }

    // Update is called once per frame
    void Update ()
    {
        // Play the next event when time is up
        if (m_timer.isTimeUp())
        {
            Event cEvent = events[currentIndex];
            playState(cEvent.stateToPlay);

            if (cEvent.movePosition != null)
            {
                m_targetPosition = cEvent.movePosition.position;
                m_isMoving = true;
            }

            if (currentIndex < events.Length - 1)
                currentIndex++;
            else
                Destroy(GetComponent<ScriptedAnimatorActivation>());

            // Start timer for next event
            m_timer.setTimeout(events[currentIndex].timeUntilEvent);
            m_timer.resetTimer();
        }

        // Start moving towards position if one is assigned
        if (m_isMoving)
        {
            transform.position = Vector3.MoveTowards(transform.position, m_targetPosition, events[currentIndex].moveSpeed * Time.deltaTime);
            print("MOVING LOL");
            if (Vector3.Distance(transform.position, m_targetPosition) == 0)
            {
                m_isMoving = false;
                print("Stop Moving!");
            }

        }
	}

    // Play the given state
    void playState(ScientistState playState)
    {
        // Disable the animators walking loop if state to be played is not "Walk"
        if (playState != ScientistState.Walk)
            m_animator.SetBool("IsWalking", false);

        switch (playState)
        {
            case ScientistState.Aiming:
                m_animator.Play("Scientist Aim Blink");
                break;
            case ScientistState.AppearTurn:
                m_animator.Play("Scientist Appear Turn");
                break;

            case ScientistState.Fibble:
                m_animator.Play("Scientist Fibble");
                break;

            case ScientistState.Idle:
                m_animator.Play("Scientist Idle");
                break;
            case ScientistState.RemoveAndLeave:
                m_animator.Play("Scientist Remove And Leave");
                break;
            case ScientistState.Walk:
                m_animator.SetBool("IsWalking", true);
                break;
        }
    }
}
