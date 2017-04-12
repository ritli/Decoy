using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using UnityStandardAssets.Utility;
using Random = UnityEngine.Random;
using UnityEngine.SceneManagement;

public enum PlayerState
{
    isAlive, isDead, isPause
} 

enum AnimationState
{
    idle, moving, jumping
}

[RequireComponent(typeof (CharacterController))]
[RequireComponent(typeof (AudioSource))]
public class PlayerController : MonoBehaviour, IKillable
{
    private bool m_controlsEnabled = true;

    public PlayerState m_playerState = PlayerState.isAlive;

    private PlayerState m_stateBeforePause;

    AnimationState m_aniState = AnimationState.idle;
    Animator m_animator;

    //Decoy event
    public delegate void DecoyAction();
    public static event DecoyAction OnCreateDecoy;

    //Decoy vars
    public GameObject m_decoy;

    //Run vars
    [Header("Walk Variables")]
    [Tooltip("For every fixed update the speed multiplier is increased or decreased by this value based on if you are starting or ending a movement.")]
    [SerializeField] private float m_WindupScale;
    [SerializeField] private float m_WalkSpeed;
    [Tooltip("Walk speed is multiplied by this when crouching, prefer value between 1 and 0.")]
    [SerializeField] private float m_crouchSpeedMultiplier;
    [Tooltip("How fast the player reaches full crouch or stands up.")]
    [SerializeField] private float m_speedToReachCrouch = 2f;

    //Jump vars
    [Header("Jump Variables")]
    [SerializeField] private float m_JumpForce;
    [Tooltip("For every fixed update the speed multiplier is decreased by this value while airborne.")]
    [Range(0, 0.1f)]
    [SerializeField] private float m_JumpAirVelDecay;
    [Tooltip("How much of WASD movement is applied when airborne. (0 = 0%, 1 = 100%)")]
    [Range(0,1)]
    [SerializeField] private float m_JumpAirControl;
    //Gravity vars
    [Header("Gravity Variables")]
    [SerializeField] private float m_StickToGroundForce;
    [SerializeField] private float m_GravityMultiplier;

    [SerializeField] public MouseLook m_MouseLook;
    [SerializeField] private bool m_UseHeadBob;
    [SerializeField] private CurveControlledBob m_HeadBob = new CurveControlledBob();
    [SerializeField] private LerpControlledBob m_JumpBob = new LerpControlledBob();
    [SerializeField] private float m_StepInterval;
    [SerializeField] private AudioClip[] m_FootstepSounds;    // an array of footstep sounds that will be randomly selected from.
    [SerializeField] private AudioClip m_JumpSound;           // the sound played when character leaves the ground.
    [SerializeField] private AudioClip m_LandSound;           // the sound played when character touches back on ground.

    private Camera m_Camera;
    private bool m_Jump;
    private float m_YRotation;
    private Vector2 m_Input;
    private Vector3 m_MoveDir = Vector3.zero;
    private CharacterController m_CharacterController;
    private CollisionFlags m_CollisionFlags;
    private bool m_PreviouslyGrounded;
    private Vector3 m_OriginalCameraPosition;
    private float m_StepCycle;
    private float m_NextStep;
    private bool m_Jumping;
    private bool m_crouching = false;
    private AudioSource m_AudioSource;
    private float m_speedWindup;
    private Vector2 m_lastInput;
    private Vector3 m_jumpVector;
    private Vector3 m_jumpVectorR;
    private bool m_resetCalled = false;
    private float m_initalHeight;
    bool m_standObstructed = false;

    private float m_crouchTime;

    Vector3 initialCameraPos;
    Vector3 initialPos;


    private void Start()
    {
        m_animator = Camera.main.GetComponentInChildren<Animator>();

        initialCameraPos = Camera.main.transform.position;
        initialPos = transform.position;


        //get previous location and rotation
        if (Checkpoint.isPreviouslySaved())
        {
            transform.position = Checkpoint.getSavedPlayerPosition();
            transform.rotation = Checkpoint.getSavedPlayerRotation();
        }

        else
        { 
            transform.position = initialPos;
        }
        m_CharacterController = GetComponent<CharacterController>();
        m_Camera = Camera.main;
        m_OriginalCameraPosition = m_Camera.transform.localPosition;
        m_HeadBob.Setup(m_Camera, m_StepInterval);
        m_StepCycle = 0f;
        m_NextStep = m_StepCycle/2f;
        m_Jumping = false;
        m_AudioSource = GetComponent<AudioSource>();
		m_MouseLook.Init(transform , m_Camera.transform);
        m_initalHeight = m_CharacterController.height;


    }

    public void Kill()
    {
        m_playerState = PlayerState.isDead;
        m_controlsEnabled = false;

        //Application.LoadLevel(0);
    }


    void UpdateAnimator()
    {
        switch (m_aniState)
        {
            case AnimationState.idle:
                break;
            case AnimationState.moving:
                break;
            case AnimationState.jumping:
                break;
            default:
                break;
        }

        m_animator.SetInteger("State", (int)m_aniState);
    }

    void ReadAnimationState()
    {
        if (Mathf.Abs(m_Input.magnitude) > 0 && !m_Jumping) 
        {
            m_aniState = AnimationState.moving;
        }
        else if (m_Jumping)
        {
            m_aniState = AnimationState.jumping;
        }
        else
        {
            m_aniState = AnimationState.idle;
        }

        UpdateAnimator();
    }

    public void CreateDecoy()
    {
        if (OnCreateDecoy != null)
        {
            OnCreateDecoy();
        }
    }

    void Crouch()
    {
        if (CrossPlatformInputManager.GetButtonDown("Crouch"))
        {
            m_crouching = true;
            m_crouchTime = 0;
        }

        else if (CrossPlatformInputManager.GetButtonUp("Crouch"))
        {
            if (CheckForObstruction())
            {
                m_standObstructed = true;
            }
            else
            {
                m_crouching = false;
                m_crouchTime = 0;
            }
        }

        if (m_crouching)
        {
            float currentHeight = m_CharacterController.height;
            float newHeight = Mathf.Lerp(m_CharacterController.height, m_initalHeight * 0.2f, m_crouchTime);

            transform.Translate(Vector3.down * (currentHeight - newHeight) / 2.5f);
            m_CharacterController.height = newHeight;

        }
        else
        {
            m_CharacterController.height = Mathf.Lerp(m_CharacterController.height, m_initalHeight, m_crouchTime);
        }

        //If player has tried to stand up and can't due to an obstruction, starts checking for obstruction each frame.
        if (m_standObstructed)
        {
            //If no obstruction is detected the player is allowed to stand up again
            if(!CheckForObstruction())
            {
                m_standObstructed = false;
                m_crouching = false;
                m_crouchTime = 0;
            }
        }

        m_crouchTime += Time.deltaTime * m_speedToReachCrouch;
        m_crouchTime = Mathf.Clamp01(m_crouchTime);
    }

    bool CheckForObstruction()
    {
        Vector3 dir = Vector3.up;
        Vector3 offset = transform.forward * 0.4f;

        for (int i = 0; i < 4; i++)
        {
            Ray ray = new Ray(transform.position + offset, dir);

            if (Physics.Raycast(ray))
            {
                return true;
            }

            offset = Quaternion.AngleAxis(90 * i, Vector3.up) * offset;
        }

        return false;
    }

    void ResetPlayer()
    {
        Camera.main.transform.position = new Vector3(Camera.main.transform.position.x, initialCameraPos.y, Camera.main.transform.position.z);
        Camera.main.transform.rotation = new Quaternion(0, 0, 0, Camera.main.transform.rotation.w);
        if(Checkpoint.isPreviouslySaved())
        {
            transform.position = Checkpoint.getSavedPlayerPosition();
            transform.rotation = Checkpoint.getSavedPlayerRotation();
        }      
        else
            transform.position = initialPos;

        m_playerState = PlayerState.isAlive;
        m_resetCalled = false;

    }

    // Update is called once per frame
    private void Update()
    {
        switch (m_playerState)
        {
            case PlayerState.isAlive:
                    RotateView();
                    // the jump state needs to read here to make sure it is not missed
                    Jump();
                    Crouch();
                    m_PreviouslyGrounded = m_CharacterController.isGrounded;
                    ReadAnimationState();
                break;
            case PlayerState.isDead:
                Camera.main.transform.Rotate(Random.insideUnitSphere * 3);
                Camera.main.transform.Translate(Vector3.down * Time.deltaTime, Space.World);
                if (!m_resetCalled)
                {
                    m_resetCalled = true;
                    Invoke("ResetPlayer", 1.5f);
                }
                break;
            case PlayerState.isPause:
                if (IsInvoking("ResetPlayer"))
                {
                    m_resetCalled = false;
                    CancelInvoke();
                }
                break;
            default:
                break;
        }


    }

    void Jump()
    {
        if (!m_Jump && !m_Jumping)
        {
            m_Jump = CrossPlatformInputManager.GetButtonDown("Jump");
        } 

        if (!m_PreviouslyGrounded && m_CharacterController.isGrounded)
        {
            StartCoroutine(m_JumpBob.DoBobCycle());
            PlayLandingSound();
            m_MoveDir.y = 0f;
            m_Jumping = false;
        }
        if (!m_CharacterController.isGrounded && !m_Jumping && m_PreviouslyGrounded)
        {
            m_MoveDir.y = 0f;
        }
    }
    void OnEnable()
    {
        PauseManager.OnPause += pausePlayer;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pausePlayer;
    }
    private void FixedUpdate()
    {
        if(m_playerState != PlayerState.isPause)
            Move();
    }

    private void Move()
    {
        float speed;

        m_Input = GetInput(); //Assigns a global input value the value of the current input

        //Based on if player is pressing WASD or not, input is either the last input or current input to properly decay movement after release
        Vector2 Input = m_speedWindup > 0 && m_Input.magnitude < 0.1f ? m_lastInput : m_Input;

        //If player jumps the last input he pressed is stored and applied until he lands again
        if (m_Jumping)
        {
            Input = m_lastInput;
            m_speedWindup -= m_JumpAirVelDecay;
        }

        //Checks if player is actually attempting to move. If moving the windup starts to increase until it reaches 1
        else if (m_Input.magnitude > 0)
        {
            m_speedWindup += m_WindupScale;
        }
        else
        {
            m_speedWindup -= m_WindupScale;
        }
        //Clamps the multiplier between 0-1
        m_speedWindup = Mathf.Clamp01(m_speedWindup);



        speed = m_WalkSpeed * m_speedWindup;

        if (m_crouching)
        {
            speed *= m_crouchSpeedMultiplier;
        }

            //Always move along the camera forward as it is the direction that it being aimed at
            Vector3 desiredMove = transform.forward * Input.y + transform.right * Input.x;

        if (m_Jumping)
        {
            desiredMove = m_jumpVector;
            m_jumpVector += transform.forward * GetInput().y * m_JumpAirControl + transform.right * GetInput().x * m_JumpAirControl;
        }

        //Get a normal for the surface that is being touched to move along it
        RaycastHit hitInfo;
        Physics.SphereCast(transform.position, m_CharacterController.radius, Vector3.down, out hitInfo, m_CharacterController.height / 2f, Physics.AllLayers, QueryTriggerInteraction.Ignore);

        desiredMove = Vector3.ProjectOnPlane(desiredMove, hitInfo.normal).normalized;

        m_MoveDir.x = desiredMove.x * speed;
        m_MoveDir.z = desiredMove.z * speed;

        //If player is not on ground
        if (m_CharacterController.isGrounded)
        {
            m_MoveDir.y = -m_StickToGroundForce;
                
            if (m_Jump)
            {
                m_jumpVector = transform.forward;
                m_jumpVectorR = transform.right;
                m_MoveDir.y = m_JumpForce;
                m_Jump = false;
                m_Jumping = true;
            }

        }
        else
        {
            m_MoveDir += Physics.gravity * m_GravityMultiplier * Time.fixedDeltaTime;
        }

        m_CollisionFlags = m_CharacterController.Move(m_MoveDir * Time.fixedDeltaTime);

        UpdateCameraPosition(speed);

        m_MouseLook.UpdateCursorLock();

        m_lastInput = Input; //Stores last input to determine if player has released the key.
    }

    private Vector2 GetInput()
    {
        // Read input
        float horizontal = CrossPlatformInputManager.GetAxis("Horizontal");
        float vertical = CrossPlatformInputManager.GetAxis("Vertical");

        if (m_Input.sqrMagnitude > 1)
        {
            m_Input.Normalize();
        }

        return new Vector2(horizontal, vertical);

    }

    private void RotateView()
    {
        m_MouseLook.LookRotation (transform, m_Camera.transform, !m_Jumping);
    }

    private void PlayLandingSound()
    {
        m_AudioSource.clip = m_LandSound;
        m_AudioSource.Play();
        m_NextStep = m_StepCycle + .5f;
    }

    private void PlayJumpSound()
    {
        m_AudioSource.clip = m_JumpSound;
        m_AudioSource.Play();
    }

    private void ProgressStepCycle(float speed)
    {
        if (m_CharacterController.velocity.sqrMagnitude > 0 && (m_Input.x != 0 || m_Input.y != 0))
        {
            m_StepCycle += (m_CharacterController.velocity.magnitude + speed) * Time.fixedDeltaTime;
        }

        if (!(m_StepCycle > m_NextStep))
        {
            return;
        }

        m_NextStep = m_StepCycle + m_StepInterval;

        PlayFootStepAudio();
    }

    private void PlayFootStepAudio()
    {
        if (!m_CharacterController.isGrounded)
        {
            return;
        }
        // pick & play a random footstep sound from the array,
        // excluding sound at index 0
        int n = Random.Range(1, m_FootstepSounds.Length);
        m_AudioSource.clip = m_FootstepSounds[n];
        m_AudioSource.PlayOneShot(m_AudioSource.clip);
        // move picked sound to index 0 so it's not picked next time
        m_FootstepSounds[n] = m_FootstepSounds[0];
        m_FootstepSounds[0] = m_AudioSource.clip;
    }

    private void UpdateCameraPosition(float speed)
    {
        Vector3 newCameraPosition;

        if (!m_UseHeadBob)
        {
            return;
        }
        if (m_CharacterController.velocity.magnitude > 0 && m_CharacterController.isGrounded)
        {
            m_Camera.transform.localPosition =
                m_HeadBob.DoHeadBob(m_CharacterController.velocity.magnitude + speed);
            newCameraPosition = m_Camera.transform.localPosition;
            newCameraPosition.y = m_Camera.transform.localPosition.y - m_JumpBob.Offset();
        }
        else
        {
            newCameraPosition = m_Camera.transform.localPosition;
            newCameraPosition.y = m_OriginalCameraPosition.y - m_JumpBob.Offset();
        }
        m_Camera.transform.localPosition = newCameraPosition;
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;
        //dont move the rigidbody if the character is on top of it
        if (m_CollisionFlags == CollisionFlags.Below)
        {
            return;
        }

        if (body == null || body.isKinematic)
        {
            return;
        }
        body.AddForceAtPosition(m_CharacterController.velocity*0.1f, hit.point, ForceMode.Impulse);
    }
    public void pausePlayer(bool isPaused)
    {

        m_MouseLook.SetCursorLock(!isPaused);

        if (!isPaused && m_playerState == PlayerState.isPause)
        {
            if (!Cursor.visible)
            {
                print("Cursor is hidden");
            }
            m_playerState = m_stateBeforePause;
        }
        else if(isPaused && m_playerState != PlayerState.isPause)
        {
            //Cursor.visible = true;
            m_stateBeforePause = m_playerState;
            m_playerState = PlayerState.isPause;
        }

    }
}

