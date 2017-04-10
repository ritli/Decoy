using UnityEngine;
using System.Collections;
using UnityStandardAssets.Utility;

public class Indicator : MonoBehaviour {

    public GameObject m_decoy;
    public GameObject m_indi;
    float m_playerLength = 3f;
    private bool m_cancelTeleport = false;
    private bool ableToTeleport = true;
    private Timer m_cooldownTimer;

    public FOVKick m_fovKick;

    public float m_length;
    [Header("Reset the timer after canceling teleport:")]
    public bool resetTimeOnCancel = false;
    [Header("Overrides the value of timer.")]
    public float teleportCooldown = 0.0f;
    public float teleportSpeed = 1.0f;

    private Vector3 m_teleportTo = new Vector3(0,0,0);
    private bool m_arrived = true;
	private bool m_foundLedge = false;
	private LedgeDetection m_ledgeCollDetection;
    private Raycast m_raycaster;
	private CharacterController m_charController;
	private SpriteRenderer m_spriteRenderer;
    private ParticleController m_partController;


	void Start ()
    {
        m_partController = Camera.main.GetComponent<ParticleController>();
        m_cooldownTimer = GetComponent<Timer>();
        m_spriteRenderer = GetComponentInChildren<SpriteRenderer>();
        m_charController = GetComponent<CharacterController>();
		m_ledgeCollDetection = GetComponent<LedgeDetection>();
		m_cooldownTimer = GetComponent<Timer>();
        m_raycaster = GetComponent<Raycast>();
        m_raycaster.setDistance(m_length);
        m_indi.SetActive(false);
        m_cooldownTimer.setTimeout(teleportCooldown);
        m_cooldownTimer.forwardTime(teleportCooldown);
        m_fovKick.Setup(Camera.main);
    }

    private void moveTo(Vector3 target)
    {
		m_teleportTo = target;
        m_arrived = false;
    }

    // Handle input for teleportation controls.
	void Update () {
		
		if (m_indi.activeSelf) 
		{
			if (m_foundLedge) 
			{
				m_spriteRenderer.color = Color.red;
			} else 
			{
				m_spriteRenderer.color = Color.white;
			}
		}

        // Move towards target position set when letting go of the "Teleport" button.
        if (!m_arrived)
        {
            transform.position = Vector3.MoveTowards(transform.position, m_teleportTo, teleportSpeed);

			// When the players position has arrived, stop moving.
			if (Vector3.Distance(transform.position, m_teleportTo) == 0)
			{
				m_arrived = true;
				m_charController.detectCollisions = true;
			}
		}

        if (Input.GetButton("Teleport"))
        {
            if (!m_cancelTeleport && m_cooldownTimer.isTimeUp())
            {
                ShowIndicator();
            }
        }
        if (Input.GetButtonUp("Teleport"))
        {
            if (!m_cancelTeleport && m_indi.activeSelf)
            {
                m_indi.SetActive(false);
				//transform.position = m_indi.transform.position;
				if (m_foundLedge)
				{
					moveTo(m_ledgeCollDetection.getNewPosition());
					m_foundLedge = false;
				} else
				{
					moveTo(m_indi.transform.position);
				}

                Vector3 lastPos = transform.position;
                PlayVisualEffects();

                //moveTo(m_indi.transform.position);

                m_cooldownTimer.resetTimer();

                GameObject decoy = (GameObject)Instantiate(m_decoy, lastPos, Quaternion.identity);
                GameManager.SetDecoy(decoy.GetComponent<Decoy>());
                GameManager.GetPlayer().CreateDecoy();

            }
            else
                m_cancelTeleport = false;
        }

        // WHen right clicking, cancel teleportation.
        if (Input.GetButtonDown("CancelTeleport"))
        {
            if (m_indi.activeSelf)
            {
                m_cancelTeleport = true;
                m_indi.SetActive(false);
				m_foundLedge = false;
            }

            if (resetTimeOnCancel)
                m_cooldownTimer.resetTimer();
        }
    }

    void PlayVisualEffects()
    {
        StartCoroutine(m_fovKick.FOVKickUp());
        m_partController.LerpAlpha(0, 0.7f, 0.05f);
        m_partController.PlayBurst(50);

        Invoke("CancelVisualEffects", 0.1f);
    }

    void CancelVisualEffects()
    {
        StartCoroutine(m_fovKick.FOVKickDown());
        m_partController.LerpAlpha(0.5f, 0, 0.05f);
    }

    void ShowIndicator()
    {
        m_indi.SetActive(true);

        Vector3 forward = Camera.main.transform.forward;
        Vector3 right = Camera.main.transform.right;

        Vector3 playerLook = forward * m_length;

        Ray rayForward = new Ray(Camera.main.transform.position, forward);
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
				// ## Start ledge detection ##
				if (m_ledgeCollDetection.findLedge (hit)) 
				{
					print ("Found ledge");
					m_foundLedge = true;
					m_charController.detectCollisions = false;
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
            m_indi.transform.position = hit.point + new Vector3(0, 0.1f, 0);
			m_foundLedge = false;
            print("Hitting the ground");
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
                    return;
                }
            }
        }
		m_foundLedge = false;
        m_indi.transform.position = transform.position + playerLook;
    }
}
