using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using UnityStandardAssets.Utility;
using Random = UnityEngine.Random;
using UnityEngine.SceneManagement;
using System.Collections;

public enum PlayerState
{
    isAlive, isDead, isPause
} 

enum AnimationState
{
    idle, moving, jumping, falling, crouching, aiming, blinking, climbing
}

[RequireComponent(typeof (CharacterController), typeof(VectorBobber))]
public class PlayerController : MonoBehaviour, IKillable
{
    [Header("Editor Vars")]
    public bool allowReset;

    [Header("States")]
    public PlayerState m_playerState = PlayerState.isAlive;
    private PlayerState m_stateBeforePause;

    [FMODUnity.EventRef]
    public string m_deathEvent;

    public bool m_hasDevice = true;
    AnimationState m_aniState = AnimationState.idle;
    Animator m_animator;
    Animator m_noDeviceAnimator;

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
	[Tooltip("Determines how much more the camera will crouch")]
	[Range(0.1f, 1)]
	[SerializeField] private float m_cameraCrouchHeight = 0.1f;

    //Jump vars
    [Header("Jump Variables")]
    [SerializeField] private float m_JumpForce;
    [Tooltip("For every fixed update the speed multiplier is decreased by this value while airborne.")]
    [Range(0, 0.1f)]
    [SerializeField] private float m_JumpAirVelDecay;
    [Tooltip("How much of WASD movement is applied when airborne. (0 = 0%, 1 = 100%)")]
    [Range(0,1)]
    [SerializeField] private float m_JumpAirControl;
    private Vector3 signedJumpVector;
    private Vector2 m_jumpInput;
    private float m_airDecreaseY;
    private float m_airDecreaseX;

    //Gravity vars
    [Header("Gravity Variables")]
    [SerializeField] private float m_StickToGroundForce;
    [SerializeField] private float m_GravityMultiplier;
    private float m_originGravity;
    private bool m_usingGravity = true;
    private Raycast m_raycaster;
    private bool m_onEdge = false;
    private Vector3 m_ledgeHitDir = new Vector3(0, 0, 0);
    [Tooltip("Decide the amount the player is pushed when touching an edge.")]
    public float ledgeAdjust = 2.0f;

    //Camera vars
    [SerializeField] public MouseLook m_MouseLook;
    [SerializeField] private bool m_UseHeadBob;
    //[SerializeField] private CurveControlledBob m_HeadBob = new CurveControlledBob();

    // Bobbing vars
    private Vector3 m_cameraOrigin;
    private VectorBobber m_cameraBobber;
    private VectorBobber m_walkingBobber;
    private float m_maximumFreefallHeight;

    private bool m_leftGround = false;

    [Header("Headbobbing variables")]
    [Tooltip("Determines the amount that the camera is moved during a landing bob effect.")]
    public float landingBob = 0.5f;
    [Tooltip("Determines the amount that the camera is moved during a jumping bob effect.")]
    public float jumpingBob = 1.0f;
    [Tooltip("Determines the amount that the camera is moved during a walking bob effect.")]
    public float walkingBob = 0.1f;
    [Tooltip("Determine how far the player must have traveled in the y-axis in order for the landing bobb to play.")]
    public float landingThreshold = 2.0f;

    [Tooltip("Determines the speed at which the camera bobs when walking.")]
    public float walkBobSpeed = 0.2f;
    [Tooltip("Determines the speed at which the camera bobs when jumping and landing.")]
    public float jumpBobSpeed = 0.2f;

    private CharacterController m_CharacterController;
    private PlayerTeleport m_teleport;
    private Camera m_Camera;
    private CollisionFlags m_CollisionFlags;

    private Vector2 m_Input;
    private Vector2 m_lastInput;
    private Vector3 m_MoveDir = Vector3.zero;
    private Vector3 m_OriginalCameraPosition;
    private Vector3 initialCameraPos;
    private Vector3 initialPos;
    private Quaternion initialRotation;
    private Vector3 m_jumpVector;
    private Vector3 m_jumpVectorR;

    private bool m_resetCalled = false;
	private bool m_resetVelocity = false;
	private bool m_resetRotation = false;
	private LedgeGrab m_ledgeDetect;
    private bool m_arrived = true;
	private bool m_ledgeGrabbing = false;
    private Vector3 m_ledgeLerpTo = new Vector3(0, 0, 0);
	private LedgeLerp m_ledgeLerp;

    private bool m_scalingVelocity = false;
    private float m_velocityScale;
    private float m_scalingStepAfterTeleport = 0.1f;

    private float m_crouchTimeElapsed;
    private float m_YRotation;
    private float m_initalHeight;
    private float m_speedWindup;
    private bool m_PreviouslyGrounded;
    private bool m_Jumping;
    private bool m_Jump;
    private bool m_crouching = false;
	private bool m_crouchFinished = false;
    private bool m_standObstructed = false;
    private bool m_inBlinkState = false;
    private bool m_controlsEnabled = true;

    // Variables for forcing look when locking during pickup animation
    private bool m_forcingLook = false;
    private Vector3 m_forcelookDirection = Vector3.zero;
    private float m_forcelookSpeed = 1.0f;
    private Quaternion m_beforeForcelookRotation;

    private float m_airTime;
    private float m_StepCycle;
	private float m_NextStep;

	private AudioSource m_AudioSource;
    private AudioPlayer m_Audio;

    bool m_inDeathState = false;

    private bool targeted = false;
    public float overlaySpeed = 1;
    public float overlayIntensityMax;
    public delegate void landEvent();
    public landEvent onLand;

    private UnityStandardAssets.ImageEffects.ScreenOverlay overlay; 

    public bool IsCrouching
    {
        get
        {
            return m_crouching;
        }
    }

    public void forceLookat(Vector3 lookTarget, float lookatSpeed)
    {
        m_forcingLook = true;
        m_forcelookDirection = Vector3.Normalize(lookTarget - m_Camera.transform.position);
        m_forcelookSpeed = lookatSpeed;
        m_beforeForcelookRotation = m_Camera.transform.rotation;
        m_controlsEnabled = false;
    }

    public void stopForcelook()
    {
        m_resetRotation = true;
        m_controlsEnabled = true;
    }

    public void hasDevice(bool hasDevice)
    {
        m_hasDevice = hasDevice;

        if (hasDevice)
            m_teleport.enableTeleportation();
        else
            m_teleport.disableTeleportation();
    } 
    
    void Awake()
    {
        m_walkingBobber = gameObject.AddComponent<VectorBobber>();
        m_walkingBobber.WalkBob = true;
        m_raycaster = GetComponent<Raycast>();
    }

    private void Start()
    {


        m_Camera = transform.FindChild("Camera").GetComponent<Camera>();
        overlay = m_Camera.GetComponent<UnityStandardAssets.ImageEffects.ScreenOverlay>();

        m_cameraBobber = GetComponent<VectorBobber>();

        m_walkingBobber.setBobSpeed(walkBobSpeed);
        m_cameraBobber.setBobSpeed(jumpBobSpeed);

        m_originGravity = m_GravityMultiplier;
        m_teleport = GetComponent<PlayerTeleport>();

        if (!m_hasDevice)
            m_teleport.disableTeleportation();

        m_animator = m_Camera.transform.FindChild("DeviceArms").GetComponent<Animator>();
        m_noDeviceAnimator = m_Camera.transform.FindChild("Arms").GetComponent<Animator>();
        m_CharacterController = GetComponent<CharacterController>();

        m_cameraOrigin = m_Camera.transform.localPosition;
        initialCameraPos = m_Camera.transform.position;
        initialPos = transform.position;
        initialRotation = transform.rotation;

        m_OriginalCameraPosition = m_Camera.transform.localPosition;
        m_initalHeight = m_CharacterController.height;

        m_MouseLook.Init(transform, m_Camera.transform);

        ResetPlayer();

        m_CharacterController = GetComponent<CharacterController>();
        m_OriginalCameraPosition = m_Camera.transform.localPosition;
        m_StepCycle = 0f;
        m_NextStep = m_StepCycle / 2f;
        m_Jumping = false;
        m_AudioSource = GetComponent<AudioSource>();
		m_MouseLook.Init(transform , m_Camera.transform);
		m_ledgeDetect = GetComponent<LedgeGrab>();
		m_ledgeLerp = GetComponent<LedgeLerp>();
        m_Audio = GetComponentInChildren<AudioPlayer>();
    }
    public void ShowOverlay()
    {
        targeted = true;
    }
    public void Kill()
    {
        m_playerState = PlayerState.isDead;
        m_controlsEnabled = false;
        if (!m_inDeathState)
        {
            m_inDeathState = true;

            StartCoroutine(KillRoutine());
        }

    }

    IEnumerator KillRoutine()
    {
        yield return new WaitForSeconds(0.1f);
        FMODUnity.RuntimeManager.PlayOneShot(m_deathEvent, transform.position);
        m_Audio.PlaySoundAtPosition(0, true, transform.position);

        float time = 0;
        float deathTime = 0.6f;

        Transform cam = overlay.transform;

        while (time < deathTime)
        {
            cam.Translate(Random.insideUnitSphere * 0.1f + Vector3.down * Time.deltaTime);

            overlay.intensity = Mathf.Lerp(1, 0, time);
            yield return new WaitForEndOfFrame();
            time += Time.deltaTime;
        }
    }

    public VectorBobber GetWalkBob()
    {
        return m_walkingBobber;
    }
    public void StopBob()
    {
        m_cameraBobber.stopBob();
        m_walkingBobber.stopBob();
    }

    void UpdateAnimator()
    {
		if (m_animator != null && m_hasDevice)
        {
            m_animator.SetBool("HasDevice", m_hasDevice);
            m_noDeviceAnimator.SetBool("HasDevice", m_hasDevice);
            m_animator.SetInteger("State", (int)m_aniState);
        }
        else if (m_noDeviceAnimator != null)
        {
            m_animator.SetBool("HasDevice", m_hasDevice);
			m_noDeviceAnimator.SetBool("HasDevice", m_hasDevice);
            m_noDeviceAnimator.SetInteger("State", (int)m_aniState);
        }
    }

    bool GetBlinkState(out int val)
    {
        //Returns blink state offset by four, to sync up with teleport enum
        val = (int)m_teleport.GetBlinkState() + 4;

//      print((int)m_teleport.GetBlinkState());
        if (m_teleport.GetBlinkState() != 0)
        {
            m_inBlinkState = true;
            return true;
        }
        else
        {
            m_inBlinkState = false;
            return false;
        }
    }

    void ReadAnimationState()
    {
        int tempStateVal = 0;
		bool gotBlinkState = GetBlinkState(out tempStateVal);
		if (m_ledgeGrabbing)
		{
			m_aniState = AnimationState.climbing;
		}	
		else if (gotBlinkState)
        {
            m_aniState = (AnimationState)tempStateVal;
        }
		else if (m_Jumping)
		{
			m_aniState = AnimationState.jumping;
		}
		else if (Mathf.Abs(m_Input.y) > 0 && !m_Jumping && !m_crouching) 
        {
            m_aniState = AnimationState.moving;
        }
		else if (m_crouching)
		{
			m_aniState = AnimationState.crouching;
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
        if (CrossPlatformInputManager.GetButtonDown("Crouch") && !m_Jumping)
        {
            m_Audio.PlayEvent(3, true);
            m_crouching = true;
            m_crouchTimeElapsed = 0;
        }

        else if (CrossPlatformInputManager.GetButtonUp("Crouch"))
        {
            if (CheckForObstruction())
                m_standObstructed = true;
            else
            {
                m_Audio.PlayEvent(3, true);
                m_crouching = false;
                m_crouchTimeElapsed = 0;
            }
        }

		if (m_crouching)
		{
			float newHeight = Mathf.Lerp(m_CharacterController.height, m_initalHeight * 0.2f, m_crouchTimeElapsed);
			m_CharacterController.height = newHeight;

			// Moves the camera down beyond what the new height does
			Vector3 cameraPos = new Vector3(
				                    m_cameraOrigin.x, 
				                    Mathf.Clamp(newHeight * m_cameraCrouchHeight, 0, m_cameraOrigin.y), 
				                    m_cameraOrigin.z);
			m_Camera.transform.localPosition = cameraPos;
		}
		else
		{
			m_CharacterController.height = Mathf.Lerp(m_CharacterController.height, m_initalHeight, m_crouchTimeElapsed);

			// Lerp the camera's position back to origin
			float cameraHeight = Mathf.Lerp(m_Camera.transform.localPosition.y, m_cameraOrigin.y, m_crouchTimeElapsed);
			Vector3 cameraPos = new Vector3(
									m_cameraOrigin.x, 
									cameraHeight, 
									m_cameraOrigin.z);
			m_Camera.transform.localPosition = cameraPos;
		}

        //If player has tried to stand up and can't due to an obstruction, starts checking for obstruction each frame.
        if (m_standObstructed)
        {
            //If no obstruction is detected the player is allowed to stand up again
            if(!CheckForObstruction())
            {
                m_standObstructed = false;
                m_crouching = false;
                m_crouchTimeElapsed = 0;
            }
        }

        m_crouchTimeElapsed += Time.deltaTime * m_speedToReachCrouch;
        m_crouchTimeElapsed = Mathf.Clamp01(m_crouchTimeElapsed);

		m_crouchFinished = m_crouchTimeElapsed > 1 ? true : false;
    }

    bool CheckForObstruction()
    {
        float length = (m_initalHeight - m_CharacterController.height) - 0.2f;
        Vector3 dir = Vector3.up;
        Vector3 offset = m_CharacterController.height * 0.5f * Vector3.up;

        if (Physics.Raycast(transform.position + offset, dir, length))
        {
            return true;
        }

        offset += transform.forward * 0.15f;

        for (int i = 0; i < 4; i++)
        {
            Ray ray = new Ray(transform.position + offset, dir * length);

            Debug.DrawRay(ray.origin, ray.direction);

            if (Physics.Raycast(ray, length, 0))
            {
                return true;
            }

            offset = Quaternion.AngleAxis(90 * i, Vector3.up) * offset;
        }

        return false;
    }

    public void ResetPlayer()
    {
        //Apply saved values if they exist
        if (Checkpoint.isPreviouslySaved())
        {

            transform.position = Checkpoint.getSavedPlayerPosition();
            transform.rotation = Checkpoint.getSavedPlayerRotation();
        }
        else
        {
            transform.position = initialPos;
            transform.rotation = initialRotation;
        }

        m_MouseLook.Init(transform, m_Camera.transform);
        
        m_playerState = PlayerState.isAlive;
        m_resetCalled = false;
		m_resetVelocity = true;
        GetComponentInChildren<UnityStandardAssets.ImageEffects.ScreenOverlay>().intensity = 0;
        m_inDeathState = false;
        m_controlsEnabled = true;
        m_teleport.m_indi.SetActive(false);
        ImageFader.instance.SetVisible(false);
        m_animator.speed = 1;
        GameManager.resetActivations();
    }

    // Update is called once per frame
    private void Update()
    {
        //if a turret has targeted the player, set the bool as false again. 
        //If they still aim at the player next frame they will set it again
        overlay.intensity = Mathf.Lerp(overlay.intensity, (targeted ? overlayIntensityMax : 0), Time.deltaTime * overlaySpeed);
        targeted = false;

        switch (m_playerState)
        {
		case PlayerState.isAlive:
//			print ("LedgeGrabbing contr: " + m_ledgeGrabbing);
			RotateView ();

            // the jump state needs to read here to make sure it is not missed
			if (!m_ledgeGrabbing)
                Jump();
            else // Set vertical velocity to 0 if player is climbing
                m_MoveDir.y = 0;
				
			m_ledgeGrabbing = m_ledgeLerp.isLerping();

            Crouch();
            m_PreviouslyGrounded = m_CharacterController.isGrounded;
            ReadAnimationState();
            break;

        case PlayerState.isDead:

            if (!m_resetCalled)
            {
                    m_animator.speed = 0;
                    ImageFader.instance.SetVisible(true);
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

        UpdateCameraPosition(0);
    }

    void Jump()
    {
        
		if (!m_Jump && !m_Jumping && m_controlsEnabled && m_CharacterController.isGrounded) 
		{
			m_Jump = CrossPlatformInputManager.GetButtonDown ("Jump");
            
        }
		
        // Keep track of the maximum height achieved while in air for measuring when landing
        if (!m_CharacterController.isGrounded)
        {
            if (transform.position.y > m_maximumFreefallHeight || !m_leftGround)
                m_maximumFreefallHeight = transform.position.y;

            if (!m_leftGround)
            {
                m_Audio.PlayEvent(2, true);
                m_leftGround = true;
            }

        }

        if (m_Jump && !m_ledgeDetect.canGrab() && m_CharacterController.isGrounded)
            m_cameraBobber.startBob(jumpingBob, false);

		if (m_ledgeDetect.lookForLedge(out m_ledgeLerpTo))
        {
            if (CrossPlatformInputManager.GetButton("Jump"))
            {
                m_cameraBobber.stopBob();
				m_ledgeLerp.lerp(m_ledgeLerpTo);
            }
            m_Jump = false;
            m_Jumping = false;
        }

		if (!m_PreviouslyGrounded && m_CharacterController.isGrounded) 
		{
            // Start the transformation of camera based on landBob
            if (m_maximumFreefallHeight - transform.position.y >= landingThreshold)
            {
                m_cameraBobber.startBob(landingBob, false);
            }

            if (onLand != null && m_airTime > 0.25f)
            {
                onLand();
            }

            m_MoveDir.y = 0f;
			m_Jumping = false;
            m_leftGround = false;
            m_airTime = 0;
        }
		if (!m_CharacterController.isGrounded && !m_Jumping && m_PreviouslyGrounded) 
		{
			m_MoveDir.y = 0f;
		}
    }
    private void FixedUpdate()
    {
        if (!m_CharacterController.isGrounded)
        {
            m_airTime += Time.fixedDeltaTime;
        }

		if (m_playerState != PlayerState.isPause && !m_ledgeLerp.isLerping() && m_controlsEnabled) 
		{
			Move ();
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

        if (!m_CharacterController.isGrounded)
            m_walkingBobber.stopBob();

        //Checks if player is actually attempting to move. If moving the windup starts to increase until it reaches 1
        else if (m_Input.magnitude > 0)
        {
            //m_cameraBobber.startBob(walkingBob, true);
            if (!m_walkingBobber.isBobbing())
            {
                m_walkingBobber.startBob(walkingBob, true);
            }

            m_speedWindup += m_WindupScale;
        }
        else
        {
            m_speedWindup -= m_WindupScale;

            if (m_walkingBobber.isBobbing())
            {
                m_walkingBobber.stopBob();
            }

        }
        //Clamps the multiplier between 0-1
        m_speedWindup = Mathf.Clamp01(m_speedWindup);

        speed = m_WalkSpeed * m_speedWindup;

        // Used for setting scale of velocity when modifyVelocity() has been called.
        // The velocity increase/decrease decays at a chosen rate.
        if (m_scalingVelocity)
        {
            speed += (m_velocityScale * speed);
            
            m_velocityScale = Mathf.MoveTowards(m_velocityScale, 0, m_scalingStepAfterTeleport);

            if (m_velocityScale == 0)
            {
                m_scalingVelocity = false;
            }

            if (m_CharacterController.isGrounded)
            {
                m_velocityScale = 0.0f;
                m_scalingVelocity = false;
            }
        }

        if (m_crouching)
        {
            speed *= m_crouchSpeedMultiplier;
        }

        //Always move along the camera forward as it is the direction that it being aimed at
        Vector3 desiredMove = transform.forward * Input.y + transform.right * Input.x;

        // If character is in middle of jump and controller is not currently scaling the velocity.
        if (m_Jumping && !m_scalingVelocity) // m_Jumping
        {
            desiredMove = m_jumpVector;

            // Create the next update to the vector in order to compare with the current and judge whether the transformation should occur.
            Vector3 comingVec = m_jumpVector + transform.forward * GetInput().y * m_JumpAirControl + transform.right * GetInput().x * m_JumpAirControl;

            // If the new vector has an opposite signed angle than the current, don't update the jumpVector. If the desired vector however
            if (Mathf.Sign(Vector3.Dot(transform.forward, desiredMove)) != Mathf.Sign(Vector3.Dot(transform.forward, comingVec))
                || m_jumpInput.y == 0) //Vector3.Dot(transform.forward, desiredMove) == 0
                m_jumpVector += transform.forward * GetInput().y * m_JumpAirControl;

            if (Mathf.Sign(Vector3.Dot(transform.right, desiredMove)) != Mathf.Sign(Vector3.Dot(transform.right, comingVec))
                || Mathf.Sign(Vector3.Dot(transform.right * -1, desiredMove)) != Mathf.Sign(Vector3.Dot(transform.right * -1, comingVec))
                || m_jumpInput.x == 0)
                m_jumpVector += transform.right * GetInput().x * m_JumpAirControl;
                
            // Update velocity inpact on each axis based on input
            m_airDecreaseY += GetInput().y * m_JumpAirControl;
            m_airDecreaseX += GetInput().x * m_JumpAirControl;

            // >= 0: Transform moving forward, otherwise: Backwards. Update speed change accordingly.
            if (Vector3.Dot(transform.forward, desiredMove) >= 0)
            {
                speed += m_airDecreaseY;
            }
            else
            {
                speed -= m_airDecreaseY;
            }

            // Same as previous but regarding L/R movement
            if (Vector3.Dot(transform.right, desiredMove) >= 0)
            {
                speed += m_airDecreaseX;
            }
            else
            {
                speed -= m_airDecreaseX;
            }

            // Make sure the player cannot accelerate by moving in the air.
            speed = Mathf.Clamp(speed, 0, m_WalkSpeed);
        }

        // Get a normal for the surface that is being touched to move along it
        RaycastHit hitInfo;
        Physics.SphereCast(transform.position, m_CharacterController.radius, Vector3.down, out hitInfo, m_CharacterController.height / 2f, Physics.AllLayers, QueryTriggerInteraction.Ignore);

        desiredMove = Vector3.ProjectOnPlane(desiredMove, hitInfo.normal).normalized;

        m_MoveDir.x = desiredMove.x * speed;
        m_MoveDir.z = desiredMove.z * speed;

        RaycastHit groundHit;
        Debug.DrawRay(transform.position, new Vector3(0, -1, 0), Color.green);
        //If player is not on ground
        if (m_CharacterController.isGrounded)
        {
            //m_MoveDir.y = -m_StickToGroundForce;

            if (m_raycaster.doRaycast(out groundHit, new Vector3(0, -1, 0), transform.position, 1.0f))
            {
                m_MoveDir.y = -m_StickToGroundForce;
                m_onEdge = false;
            }
            else
            {
                m_MoveDir.y = -0.3f;
                m_MoveDir = m_MoveDir + new Vector3(m_ledgeHitDir.x, m_ledgeHitDir.y * -1, m_ledgeHitDir.z) * ledgeAdjust;
                m_MoveDir += Physics.gravity * m_GravityMultiplier * Time.fixedDeltaTime;

                m_onEdge = true;
            }

            if (m_Jump) 
			{
				m_jumpVector = m_MoveDir;
				m_jumpVectorR = transform.right;
				m_MoveDir.y = m_JumpForce;
				m_Jump = false;
				m_Jumping = true;
				signedJumpVector = new Vector3 (Mathf.Sign (m_MoveDir.x), 0, Mathf.Sign (m_MoveDir.z));
                m_jumpInput = new Vector2(GetInput().x, GetInput().y);

				m_airDecreaseY = 0.0f;
				m_airDecreaseX = 0.0f;
			} 

        }
        else
        {
            m_MoveDir += Physics.gravity * m_GravityMultiplier * Time.fixedDeltaTime;
            m_onEdge = false;
        }
			
		if (m_resetVelocity) 
		{
			m_resetVelocity = false;
			m_Jump = false;
			m_Jumping = false;
			desiredMove = Vector3.zero;
			m_MoveDir = Vector3.zero;
			m_speedWindup = 0;
			speed = 0;
		}

        m_CollisionFlags = m_CharacterController.Move(m_MoveDir * Time.fixedDeltaTime);

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
		if (m_ledgeGrabbing) 
		{
			m_resetRotation = true;
			m_MouseLook.LookRotationLimited(transform, m_Camera.transform, m_ledgeLerp.getDestinationDirection());
		}
		else if (m_resetRotation) 
		{
            if (!m_forcingLook)
            {
                m_resetRotation = false;
                m_MouseLook.Init(transform, m_Camera.transform);
            }
            else // Reset the rotation to what it was before the forced movement if forcelook was used.
            {
                m_Camera.transform.rotation = m_Camera.transform.rotation = Quaternion.RotateTowards(m_Camera.transform.rotation, m_beforeForcelookRotation, m_forcelookSpeed * Time.deltaTime);

                // Check if the rotation is close enough to be considered done. Thereby avoiding rouning errors. Marginal = 1.0f
                if (Quaternion.Angle(m_Camera.transform.rotation, m_beforeForcelookRotation) <= 1.0f)
                {
                    m_resetRotation = false;
                    m_forcingLook = false;
                }
            }
		}
		else if (m_forcingLook)
        {
            m_Camera.transform.rotation = Quaternion.RotateTowards(m_Camera.transform.rotation, Quaternion.LookRotation(m_forcelookDirection), m_forcelookSpeed * Time.deltaTime);
        }
        else
        {
            m_MouseLook.LookRotation(transform, m_Camera.transform, !m_Jumping);
        }

    }

    private void UpdateCameraPosition(float speed)
    {
        if (!m_UseHeadBob)
            return;
        
        // Reset camera before each offset so that it does not get continuously moved
		if (!m_crouching && m_crouchFinished)
		{
			// Bobbing
			m_Camera.transform.localPosition = m_cameraOrigin;
			m_Camera.transform.localPosition += m_cameraBobber.getOffset() + m_walkingBobber.getOffset();
		}
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;

        if (m_onEdge)
        {
            m_ledgeHitDir = (hit.collider.ClosestPointOnBounds(transform.position) - transform.position) * -1;
//          Debug.DrawRay(transform.position, m_ledgeHitDir * 5.0f, Color.red);
        }

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

    // Hard set the gravitymultiplier to zero. Also save the gravity in order to be able to reset it afterhand.
    public void disableGravity()
    {
        if (m_usingGravity)
        {
            m_originGravity = m_GravityMultiplier;
            m_usingGravity = false;
            m_GravityMultiplier = 0.0f;
        }
    }

    // Set the gravity to what it was before the last set.
    public void enableGravity()
    {
        m_GravityMultiplier = m_originGravity;
        m_usingGravity = true;
    }
    public void modifyVelocity(float velocityScale)
    {
        m_velocityScale = velocityScale;
        m_scalingVelocity = true;
    }
    public void setScaleDecay(float decay)
    {
        m_scalingStepAfterTeleport = decay;
    }

    public void pausePlayer(bool isPaused)
    {

        m_MouseLook.SetCursorLock(!isPaused);

        if (!isPaused && m_playerState == PlayerState.isPause)
        {
            m_playerState = m_stateBeforePause;
			if (m_animator != null)
            	m_animator.speed = 1;
        }
        else if(isPaused && m_playerState != PlayerState.isPause)
        {
			if (m_animator != null)
            	m_animator.speed = 0;
            m_stateBeforePause = m_playerState;
            m_playerState = PlayerState.isPause;
        }

    }
}

