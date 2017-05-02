using UnityEngine;
using System.Collections;
using UnityStandardAssets.Utility;
using System;
public enum BlinkState
{
    nah, aiming, blinking
}

public class PlayerTeleport : MonoBehaviour {


	private LedgeDetection m_ledgeDetection;
    private LerpObject m_lerpObject;
    private TeleportationAdjuster m_teleportAdjuster;
	private GameObject m_instanceOfteleportTarget;
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
    private bool ableToTeleport = true;
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

    private Vector3 m_teleportTo = new Vector3(0,0,0);
	private Vector3 m_ledgeLerpTo = new Vector3(0, 0, 0);
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
		m_ledgeDetection = GetComponent<LedgeDetection>();
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
        target += new Vector3(0, m_playerLength / 2, 0);
        m_teleportTo = target;
		m_arrived = false;
        m_player.disableGravity();
    }

    // Handle input for teleportation controls.
	void Update () {

        if (!m_isPaused && m_player.m_playerState == PlayerState.isAlive)
        {
            if (m_indi.activeSelf)
            {
				if (m_foundLedge)
                {
                    //m_particleSystem.startColor = Color.blue;
                    //m_particleSystem.color = Color.red;
                }
                else if (!m_enoughSpace)
                {
                    //m_particleSystem.startColor = Color.red;
                    //m_particleSystem.color = Color.yellow;
                }

                else
                {
                    //m_particleSystem.startColor = new ParticleSystem.MinMaxGradient(new Color32(0, 255, 55, 255));
                    //m_particleSystem.color = Color.white;
                }

            }

            if (m_cooldownTimer.isTimeUp())
            {
                m_currentColor = Color.Lerp(m_currentColor, m_canBlinkColor, 0.5f);

            }
            else
            {
                m_currentColor = Color.Lerp(m_currentColor, m_rechargeColor, 0.5f);
            }

            // Move towards target position set when letting go of the "Teleport" button.
			if (!m_arrived)
            {
                m_blinkState = BlinkState.nah;
                float step = teleportSpeed * Time.deltaTime;
                transform.position = Vector3.MoveTowards(transform.position, m_teleportTo, step);

                // When the players position has arrived, stop moving. //////// BUG: Distance is 0 even though it shouldnt be
                if (Vector3.Distance(transform.position, m_teleportTo) == 0)
                {
					m_arrived = true;
                    m_ledgeDetection.arrivedAtWall();
					m_charController.detectCollisions = true;

					if (m_foundLedge) {
						m_ledgeLerp.lerp(m_ledgeLerpTo);
						m_foundLedge = false;  
                    }
					m_player.enableGravity();
					m_player.modifyVelocity(velocityAfterTeleport / 100);
                }
            }

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
				if (!m_cancelTeleport && m_indi.activeSelf)
				{

					if (m_foundLedge) 
					{
						moveTo (m_ledgeDetection.getWallPoint());
						//m_foundLedge = false;
					} 
					else if (m_ledgeDetection.isLedgeBlocked ()) 
					{
						moveTo (m_ledgeDetection.getNewPosition ());
					}
					else if (!m_enoughSpace) 
					{
						if (m_ledgeDetection.findValidPosition (m_ledgeDetection.getInvalidPosition ()))
							moveTo(m_ledgeDetection.getNewPosition ());
							
					}
					else
                    {
						m_ledgeDetection.isTeleporting();
                        moveTo(m_indi.transform.position);
                    }

                    m_blinkState = BlinkState.blinking;
                    Vector3 lastPos = transform.position;
                    PlayVisualEffects();

                    m_cooldownTimer.resetTimer();

                    GameObject decoy = (GameObject)Instantiate(m_decoy, lastPos, Quaternion.identity);

                    //Inherit player velocity
                    Vector3 inheritVelocity = (transform.position - m_lastPosition) / Time.deltaTime;
                    decoy.GetComponent<Rigidbody>().velocity = inheritVelocity * decoyVelocityInheritance/100;
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

            //ReadBlinkState();

        }

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
        m_partController.PlayBurst(50);

        Invoke("CancelVisualEffects", 0.5f);
    }

    void CancelVisualEffects()
    {
        //StartCoroutine(m_fovKick.FOVKickDown());
        m_partController.LerpAlpha(0.5f, 0, 0.05f);
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
        Ray rayDown = new Ray(transform.position + playerLook + (new Vector3(0, 1.0f, 0)), Vector3.down);

        RaycastHit hit = new RaycastHit();

//        Debug.DrawRay(transform.position + playerLook, Vector3.down * 10, Color.red);

		// Reset the conditions
		m_enoughSpace = true;
		m_foundValidSpace = true;

        if (m_raycaster.doRaycast(out hit))
        {
			m_enoughSpace = m_ledgeDetection.findEnoughSpace (hit);

			// Roof
            if (Vector3.Angle(hit.normal, Vector3.down) < 45)
            {
                m_indi.transform.position = hit.point + hit.normal * m_playerLength;
				m_foundLedge = false;
                return;
            }

			//If true then surface is wall
			if (Vector3.Angle(hit.normal, Vector3.up) > 45)
			{
				if (m_enoughSpace) 
				{
                    //Debug.DrawLine(transform.position, hit.point, Color.green);
                    // ## Start ledge detection ##
					if (m_ledgeDetection.findLedge (hit) && hit.collider.tag != Tags.noGrab) 
					{
						// Only lerps to ledge if hit wasn't on NoGrab area
						m_foundLedge = true;
						m_ledgeLerpTo = m_ledgeDetection.getNewPosition ();
						m_charController.detectCollisions = false;
					} 
					else if (m_ledgeDetection.isLedgeBlocked ()) 
					{
						m_foundLedge = false;	
						m_indi.transform.position = m_ledgeDetection.getNewPosition ();
						return;
					} 
					else
						m_foundLedge = false;
				}
				if (m_ledgeDetection.isIndPosSet())
					m_indi.transform.position = m_ledgeDetection.getValidIndPosition ();
				else
					m_indi.transform.position = hit.point + hit.normal * m_playerWidth;
				return;
			}

			//If true then normal is a ceiling

			//Else then surface is floor
			else
            {
				m_foundLedge = false;

				for (int i = 0; i < 5; i++)
                {
                    Vector3 centerpos = hit.point + Vector3.up * 0.5f;
                    Vector3 dir = Quaternion.AngleAxis(i * -45, Vector3.up) * right;

                    if (Physics.Raycast(centerpos, dir, out hit, 1f))
                    {

                        if (Vector3.Angle(hit.normal, Vector3.up) > 45)
                        {
                            m_indi.transform.position = hit.point + hit.normal;
                            return;
                        }
                    }
                }
                m_indi.transform.position = hit.point + Vector3.up * 0.2f;

            }
            return;

        }
        // Check for collision of floor when ray does not hit a surface.
        else if (Physics.Raycast(rayDown, out hit, 1.5f))
        {
            m_indi.transform.position = hit.point + new Vector3(0,0.1f,0);
            //print("Hitting the ground");
			m_foundLedge = false;
            //print("Hitting the ground");
            return;
        }



        for (int i = 0; i < 5; i++)
        {
            Vector3 centerpos = transform.position + playerLook;
            Vector3 dir = Quaternion.AngleAxis(i * -45, Vector3.up) * right;

            if (Physics.Raycast(centerpos, dir, out hit, 0.5f))
            {
                if (Vector3.Angle(hit.normal, Vector3.up) > 45)
                {
                    m_indi.transform.position = hit.point + hit.normal;
                    m_foundLedge = false;
                    return;
                }
            }
        }
		m_foundLedge = false;

        m_indi.transform.position = transform.position + playerLook;
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
}
