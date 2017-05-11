using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ScientistState { Aiming, AppearTurn, Fibble, Idle, RemoveAndLeave, Walk, None };

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
    [Tooltip("Determine how fast the rotation is performed.")]
    public float rotationSpeed;
    [Tooltip("Choose the animation state to be played")]
    public  ScientistState stateToPlay;
    [Tooltip("Determine time until event is executed")]
    public float timeUntilEvent;
    [Header("Conditions to await")]
    [Tooltip("Determine if this event should wait for the movement of the previous one")]
    public bool awaitPrevMovement;
    [Tooltip("Determine if this event should wait for this animation state before running. Leave empty if not used.")]
    public string awaitState;
}

[RequireComponent(typeof(Timer))]
public class ScriptedAnimatorActivation : ActivationObject {

    // Privates
    private Animator m_animator;
    private ScientistState currentState;
    private bool startedScriptedEvent = false;
    private Timer m_timer;
    private int currentIndex = 0;

    // Movement vars
    private bool m_isMoving = false;
    private Vector3 m_targetPosition = new Vector3(0, 0, 0);
    private float currentMovementSpeed;

    // Rotation vars
    private bool m_isRotating = false;
    private Quaternion m_targetRotation;
    private float currentRotationSpeed;

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
        if (m_timer.isTimeUp() && startedScriptedEvent)
        {
            Event cEvent = events[currentIndex];
            
            if (cEvent.awaitPrevMovement && !m_isMoving
                || !cEvent.awaitPrevMovement)
            {
                if (m_animator.GetCurrentAnimatorStateInfo(0).IsName(cEvent.awaitState)
                || cEvent.awaitState == "")
                {
                    playState(cEvent.stateToPlay);

                    if (cEvent.movePosition != null)
                    {
                        m_targetPosition = cEvent.movePosition.position;
                        currentMovementSpeed = cEvent.moveSpeed;
                        m_isMoving = true;
                    }

                    if (cEvent.rotation != 0)
                    {
                        m_targetRotation = Quaternion.AngleAxis(cEvent.rotation, new Vector3(0, 1, 0)) * transform.rotation;
                        currentRotationSpeed = cEvent.rotationSpeed;
                        m_isRotating = true;
                    }

                    if (currentIndex < events.Length - 1)
                        currentIndex++;
                    else
                        startedScriptedEvent = false;

                    // Start timer for next event
                    m_timer.setTimeout(events[currentIndex].timeUntilEvent);
                    m_timer.resetTimer();
                }

            }
        }

        // Start moving towards position if one is assigned
        if (m_isMoving)
        {
            transform.position = Vector3.MoveTowards(transform.position, m_targetPosition, currentMovementSpeed * Time.deltaTime);
            if (Vector3.Distance(transform.position, m_targetPosition) == 0)
            {
                m_isMoving = false;

                if (currentState == ScientistState.Walk)
                    playState(ScientistState.Idle);
            }
        }

        if (m_isRotating)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, m_targetRotation, currentRotationSpeed * Time.deltaTime);

            if (transform.rotation == m_targetRotation)
                m_isRotating = false;
        }
	}

    // Play the given state
    void playState(ScientistState playState)
    {
        currentState = playState;

        // Disable the animators walking loop if state to be played is not "Walk"
        if (playState != ScientistState.Walk && playState != ScientistState.None)
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
                //m_animator.Play("Scientist Idle");
                break;
            case ScientistState.RemoveAndLeave:
                m_animator.Play("Scientist Remove And Leave");
                break;
            case ScientistState.Walk:
                m_animator.SetBool("IsWalking", true);
                m_animator.Play("Scientist Walk");
                break;
            default:
                break;
        }
    }
}
