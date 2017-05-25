using UnityEngine;
using System.Collections;
using UnityStandardAssets.Utility;
using System;
public enum BlinkState
{
    nah, aiming, blinking
}

public class PlayerTeleport : MonoBehaviour {


	private LedgeTele m_ledgeDetection;
	private LedgeLerp m_ledgeLerp;

    public Material m_emissionMat;

    public Color m_rechargeColor;
    public Color m_activeColor;
    public Color m_canBlinkColor;
    Color m_currentColor;
    Color m_lastColor;

    public GameObject m_decoy;
    PlayerController m_player;
    public GameObject m_indi;
    private float m_playerLength;
	private float m_playerWidth;
    private bool m_cancelTeleport = false;
    private Timer m_cooldownTimer;
    private bool m_isPaused = false;
    public FOVKick m_fovKick;

    public float m_length;
    [Header("Reset the timer after canceling teleport:")]
    public bool resetTimeOnCancel = false;
    [Header("Overrides the value of timer.")]
    public float teleportCooldown = 0.0f;
    [Header("Adjusts speed of teleportation.")]
    public float teleportSpeed = 1.0f;
    [Header("Multiply vertical length of teleport with this value")]
    public float heightScale = 1.0f;
    [Header("Multiply horizontal length of teleport with this value")]
    public float lengthScale = 1.0f;
    [Tooltip("Scales the velocity when arrived at destination after a teleport. Ex: -100, indicates a -100% decrease in velocity. -100 combined with a value of zero on the decay results in a total stop.")]
    public float velocityAfterTeleport = 0.0f;
    [Tooltip("Variable decides how fast the velocity after a teleport decays. Higher: velocity increase decays faster.")]
    public float velocityDecayOnTeleport = 0.1f;
    [Tooltip("Determine the amount of velocity that the decoy inherits from the player. 100: 100% of players velocity.")]
    [Range(0, 100)]
    public float decoyVelocityInheritance = 100.0f;

	private Vector3 m_teleportTo = new Vector3(0, 0, 0);
	private Vector3 m_ledgeLerpTo = new Vector3(0, 0, 0);
	private Vector3 m_grabPoint = new Vector3(0, 0, 0);
	private bool m_arrived = true;
	private bool m_foundLedge = false;
	private bool m_enoughSpace = true;
	private bool m_foundValidSpace = true;

    private Raycast m_raycaster;
	private CharacterController m_charController;
	private SpriteRenderer m_spriteRenderer;
    private ParticleController m_partController;
    private BlinkState m_blinkState;
	private ParticleSystem.MainModule m_particleSystem;

    private Vector3 m_lastPosition;

	void Start ()
    {
		m_playerLength = GetComponent<CharacterController>().height;

        m_partController = transform.FindChild("Camera").GetComponentInChildren<ParticleController>();
		m_playerWidth = GetComponent<CharacterController>().radius * 2;
        m_cooldownTimer = GetComponent<Timer>();
		//m_particleSystem = GetComponentInChildren<SpriteRenderer>(true).GetComponentInChildren<ParticleSystem>().main;
        m_charController = GetComponent<CharacterController>();
		m_ledgeDetection = GetComponent<LedgeTele>();
		m_ledgeLerp = GetComponent<LedgeLerp>();
		m_cooldownTimer = GetComponent<Timer>();
        m_raycaster = GetComponent<Raycast>();

        m_raycaster.setDistance(m_length);
        try
        {
            m_player = GameManager.GetPlayer();
        }
        catch (NullReferenceException msg)
        {
            Debug.LogError("Error, null player: " + msg.Message);
            Debug.LogError(msg.StackTrace);
        }
        m_indi.SetActive(false);
        m_cooldownTimer.setTimeout(teleportCooldown);
        m_cooldownTimer.forwardTime(teleportCooldown);

        m_fovKick.Setup(transform.FindChild("Camera").GetComponent<Camera>());
        m_player.setScaleDecay(velocityDecayOnTeleport);
    }
    private void OnEnable()
    {
        PauseManager.OnPause += pauseIndicator;
    }
    private void OnDisable()
    {
        PauseManager.OnPause -= pauseIndicator; 
    }
    private void moveTo(Vector3 target)
    {
        // Bortkommenterad eftersom jag provar ComputePenetration
        //target += new Vector3(0, m_playerLength / 2, 0);
        m_teleportTo = target;
		m_arrived = false;
        m_player.disableGravity();
    }

    // Handle input for teleportation controls.
	void Update () {
        if (!m_isPaused && m_player.m_playerState == PlayerState.isAlive)
        {
            if (m_cooldownTimer.isTimeUp())
                m_currentColor = Color.Lerp(m_currentColor, m_canBlinkColor, 0.5f);
            else
                m_currentColor = Color.Lerp(m_currentColor, m_rechargeColor, 0.5f);

            // Move towards target position set when letting go of the "Teleport" button.
            if (!m_arrived)
            {
				m_blinkState = BlinkState.nah;
                float step = teleportSpeed * Time.deltaTime;
                transform.position = Vector3.MoveTowards(transform.position, m_teleportTo, step);

                // When the players position has arrived, stop moving.
                if (Vector3.Distance(transform.position, m_teleportTo) == 0)
                {
                    m_arrived = true;
                    m_ledgeDetection.arrivedAtWall();
                    m_charController.detectCollisions = true;

                    if (m_foundLedge)
                    {
                        m_ledgeLerp.lerp(m_ledgeLerpTo);
                        m_foundLedge = false;
                    }
                    m_player.enableGravity();
                    m_player.modifyVelocity(velocityAfterTeleport / 100);
                }
            }

            if (Input.GetButtonDown("Teleport"))
                m_cancelTeleport = false;

            if (Input.GetButton("Teleport"))
            {
                if (!m_cancelTeleport && m_cooldownTimer.isTimeUp())
                {

                    m_currentColor = Color.Lerp(m_currentColor, m_activeColor, 0.5f);

                    ShowIndicator();
                    m_blinkState = BlinkState.aiming;
                }
            }
            if (Input.GetButtonUp("Teleport"))
            {
				m_ledgeLerp.stop();
                if (!m_cancelTeleport && m_indi.activeSelf)
                {
                    moveTo(m_grabPoint);
                    m_ledgeDetection.startTeleporting();

                    m_blinkState = BlinkState.blinking;
                    Vector3 lastPos = transform.position;
                    PlayVisualEffects();

                    m_cooldownTimer.resetTimer();

                    GameObject decoy = (GameObject)Instantiate(m_decoy, lastPos, Quaternion.identity);

                    // Inherit player velocity and rotation when instancing
                    Vector3 inheritVelocity = (transform.position - m_lastPosition) / Time.deltaTime;
                    decoy.GetComponent<Rigidbody>().velocity = inheritVelocity * decoyVelocityInheritance / 100;
                    decoy.transform.rotation = transform.rotation;
                    GameManager.SetDecoy(decoy.GetComponent<Decoy>());

                    GameManager.GetPlayer().CreateDecoy();
                }
                else
                    m_cancelTeleport = false;
                m_indi.SetActive(false);
            }

            // When right clicking, cancel teleportation.
            if (Input.GetButtonDown("CancelTeleport"))
            {
                cancelTeleport();
            }
			
            //ReadBlinkState();

        }
        else if (m_player.m_playerState == PlayerState.isDead)
            FinishTeleport();
        else if (m_player.m_playerState == PlayerState.isPause)
            cancelTeleport();

        //Checks if color has changed since last frame to avoid needless material changes
        if (m_currentColor != m_lastColor)
        {
            m_emissionMat.SetColor("_EmissionColor", m_currentColor);
        }

        m_lastColor = m_currentColor;
        m_lastPosition = transform.position;
    }

    public BlinkState GetBlinkState()
    {
        return m_blinkState;
    }

    void PlayVisualEffects()
    {
        StartCoroutine(m_fovKick.FOVKickUp());
        m_partController.LerpAlpha(0, 0.7f, 0.05f);
        m_partController.PlayBurst(60);

        Invoke("CancelVisualEffects", 0.5f);
    }

    void CancelVisualEffects()
    {
        //StartCoroutine(m_fovKick.FOVKickDown());
        m_partController.LerpAlpha(0.5f, 0, 0.05f);
    }

	void cancelTeleport() 
	{
		if (m_indi.activeSelf)
		{
			//m_emitter.Target.SetParameter("BlinkUsage", 1.6f);
			// m_soundStarted = false;
			m_blinkState = BlinkState.nah;
			m_cancelTeleport = true;
			m_indi.SetActive(false);
			m_foundLedge = false;
		}

		if (resetTimeOnCancel)
			m_cooldownTimer.resetTimer();
	}

    void ShowIndicator()
    {
        m_indi.SetActive(true);

        Vector3 forward = Camera.main.transform.forward;
        Vector3 right = Camera.main.transform.right;
        Vector3 axisLimitedForward = new Vector3();

        // Limit the vector based on the defined variables
        axisLimitedForward.y = forward.y * heightScale;
        axisLimitedForward.x = forward.x * lengthScale;
        axisLimitedForward.z = forward.z * lengthScale;

        // Adjust based on weight.
        axisLimitedForward *= m_length;

        float actualLength = Vector3.Magnitude(axisLimitedForward);

        // Set length of raycasting based on the limited axis of the teleportation vector.
        m_raycaster.setDistance(actualLength);

        // Create ray for casting when no terrain was hit
        Vector3 playerLook = forward * actualLength;
		Ray rayDown = new Ray(Camera.main.transform.position + playerLook, Vector3.down);

        RaycastHit hit = new RaycastHit();

		Vector3 validPos = new Vector3 (0, 0, 0);

//		Debug.DrawRay(Camera.main.transform.position, playerLook, Color.red);
//		Debug.DrawRay(rayUp.origin, rayUp.direction, Color.white);
//		Debug.DrawRay(rayDown.origin, rayDown.direction, Color.yellow);

		// Reset the conditions
		m_enoughSpace = true;
		m_foundValidSpace = true;

        if (m_raycaster.doRaycast(out hit))
        {
			float angle = Vector3.Angle(hit.normal, Vector3.up);

			m_enoughSpace = m_ledgeDetection.findEnoughSpace(hit.point, out validPos);
            // Start ledge detection and set the variables to their appropriate positions
            if (m_ledgeDetection.findLedge(hit, out m_grabPoint, out m_ledgeLerpTo) && hit.collider.tag != Tags.noGrab) 
            {
				m_indi.transform.position = m_grabPoint;
                m_charController.detectCollisions = false;
				m_foundLedge = true;
                return;
            }
			// If there wasn't a ledge found, assign the validPos
            m_grabPoint = validPos;
			m_indi.transform.position = validPos;
			m_foundLedge = false;
			return;
        }
		// Check for collision of floor and roof when ray does not hit a surface
		else if (m_raycaster.doRaycast(out hit, rayDown.direction, rayDown.origin, m_playerLength / 2) || 
				 m_raycaster.doRaycast(out hit, -rayDown.direction, rayDown.origin, m_playerLength / 2))
		{
			m_enoughSpace = m_ledgeDetection.findEnoughSpace(rayDown.origin, out validPos);
			m_indi.transform.position = validPos;
			m_grabPoint = validPos;
			m_foundLedge = false;
			return;
		}


		// Checks in a half-circle where the aim is if there is a wall nearby. Put the indicator out of the wall
        for (int i = 0; i < 5; i++)
        {
            Vector3 centerpos = transform.position + playerLook;
            Vector3 dir = Quaternion.AngleAxis(i * -45, Vector3.up) * right;
            if (Physics.Raycast(centerpos, dir, out hit, 0.5f))
            {
                if (Vector3.Angle(hit.normal, Vector3.up) > 45)
                {
                    m_indi.transform.position = hit.point + hit.normal;
					m_grabPoint = hit.point + hit.normal;
                    m_foundLedge = false;
                    return;
                }
            }
        }

		// If nothing is hit, check for enough space
//		print("Hit nothing");
		m_foundLedge = false;
		m_ledgeDetection.hitNothing();
		m_ledgeDetection.findEnoughSpace(Camera.main.transform.position + playerLook, out validPos);
        m_indi.transform.position = validPos;
		m_grabPoint = validPos;
        //m_indi.transform.position = Camera.main.transform.position + playerLook;
    }
    void pauseIndicator(bool isPaused)
    {
        //enabled = !isPaused;
        if(isPaused)
        {
            m_indi.SetActive(false);
        }
        m_isPaused = isPaused;
    }
    public void FinishTeleport()
    {
        cancelTeleport();
        m_arrived = true;
        m_charController.detectCollisions = true;
        m_player.enableGravity();
        m_ledgeDetection.arrivedAtWall();
        m_ledgeLerp.stop();
    }
    public Vector3 TeleportingTo()
    {
        return m_teleportTo;
    }
    public bool isTeleporting()
    {
        return !m_arrived;
    }
}
