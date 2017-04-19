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

    public GameObject m_decoy;
    PlayerController m_player;
    public GameObject m_indi;
    float m_playerLength = 3f;
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

	private Vector3 m_teleportTo = new Vector3(0,0,0);
	private Vector3 m_ledgeLerpTo = new Vector3(0, 0, 0);
	private bool m_arrivedAtWall = true;
	private bool m_foundLedge = false;

    private Raycast m_raycaster;
	private CharacterController m_charController;
	private SpriteRenderer m_spriteRenderer;
    private ParticleController m_partController;
    private BlinkState m_blinkState;

    private Vector3 m_lastPosition;

	void Start ()
    {
        m_partController = Camera.main.GetComponent<ParticleController>();
        m_cooldownTimer = GetComponent<Timer>();
        m_spriteRenderer = GetComponentInChildren<SpriteRenderer>();
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

        m_fovKick.Setup(Camera.main);
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
		m_arrivedAtWall = false;
        m_player.disableGravity();
    }

    // Handle input for teleportation controls.
	void Update () {

        if (!m_isPaused)
        {
            if (m_indi.activeSelf)
            {
                if (m_foundLedge)
                    m_spriteRenderer.color = Color.red;
                else
                    m_spriteRenderer.color = Color.white;
            }

            // Move towards target position set when letting go of the "Teleport" button.
			if (!m_arrivedAtWall)
            {
                m_blinkState = BlinkState.nah;
                float step = teleportSpeed * Time.deltaTime;
                transform.position = Vector3.MoveTowards(transform.position, m_teleportTo, step);

                // When the players position has arrived, stop moving.
                if (Vector3.Distance(transform.position, m_teleportTo) == 0)
                {
					m_arrivedAtWall = true;
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
                    ShowIndicator();
                    m_blinkState = BlinkState.aiming;
                }
            }
            if (Input.GetButtonUp("Teleport"))
            {
                if (!m_cancelTeleport && m_indi.activeSelf)
                {
                    m_indi.SetActive(false);

                    if (m_foundLedge)
                    {
						moveTo(m_ledgeDetection.getWallPoint());
                        //m_foundLedge = false;
                    }
                    else if (m_ledgeDetection.isLedgeBlocked()) 
                    {
                        moveTo(m_ledgeDetection.getNewPosition());
                    }
                    else
                    {
                        moveTo(m_indi.transform.position);
                    }

                    m_blinkState = BlinkState.blinking;
                    Vector3 lastPos = transform.position;
                    PlayVisualEffects();

                    m_cooldownTimer.resetTimer();

                    GameObject decoy = (GameObject)Instantiate(m_decoy, lastPos, Quaternion.identity);

                    //Inherit player velocity
                    decoy.GetComponent<Rigidbody>().velocity = (transform.position - m_lastPosition) / Time.deltaTime;
                    GameManager.SetDecoy(decoy.GetComponent<Decoy>());

                    GameManager.GetPlayer().CreateDecoy();
                }
                else
                    m_cancelTeleport = false;
            }

            // When right clicking, cancel teleportation.
            if (Input.GetButtonDown("CancelTeleport"))
            {
                if (m_indi.activeSelf)
                {
                    m_blinkState = BlinkState.nah;
                    m_cancelTeleport = true;
                    m_indi.SetActive(false);
                    m_foundLedge = false;
                }

                if (resetTimeOnCancel)
                    m_cooldownTimer.resetTimer();
            }
        }

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

        Debug.DrawRay(transform.position + playerLook, Vector3.down * 10, Color.red);

        if (m_raycaster.doRaycast(out hit))
        {
            //print(Vector3.Angle(hit.normal, Vector3.down));

            if (Vector3.Angle(hit.normal, Vector3.down) == 0)
            {
                m_indi.transform.position = hit.point + hit.normal * m_playerLength;
                return;
            }

			//If true then surface is wall
			if (Vector3.Angle(hit.normal, Vector3.up) > 45)
			{
				// Only looks for ledge if hit isn't on NoGrab area
				if (hit.collider.tag != Tags.noGrab) 
				{
					// ## Start ledge detection ##
					if (m_ledgeDetection.findLedge(hit)) 
					{
						//print ("Found ledge");
						m_foundLedge = true;
						m_ledgeLerpTo = m_ledgeDetection.getNewPosition();
						m_charController.detectCollisions = false;
					} else 
					{
						m_foundLedge = false;	
					}
				} else 
				{
					m_foundLedge = false;
				}
                m_indi.transform.position = hit.point + hit.normal;
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
