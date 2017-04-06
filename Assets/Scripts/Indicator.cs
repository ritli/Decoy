using UnityEngine;
using System.Collections;

public class Indicator : MonoBehaviour {

    PlayerController m_player;
    public GameObject m_indi;
    float m_playerLength = 3f;
    private bool m_cancelTeleport = false;
    private bool ableToTeleport = true;
    private Timer m_cooldownTimer;

    public float m_length;
    [Header("Reset the timer after canceling teleport:")]
    public bool resetTimeOnCancel = false;
    [Header("Overrides the value of timer.")]
    public float teleportCooldown = 0.0f;
    public float teleportSpeed = 1.0f;

    private Vector3 m_teleportTo = new Vector3(0,0,0);
    private bool m_arrived = true;

	void Start ()
    {
        m_cooldownTimer = GetComponent<Timer>();
        m_player = GameManager.GetPlayer();
        m_indi.SetActive(false);
        m_cooldownTimer.setTimeout(teleportCooldown);
        m_cooldownTimer.forwardTime(teleportCooldown);
    }

    private void moveTo(Vector3 target)
    {
        m_teleportTo = target;
        m_arrived = false;
    }

    // Handle input for teleportation controls.
	void Update () {

        // Move towards target position set when letting go of the "Teleport" button.
        if (!m_arrived)
        {
            transform.position = Vector3.MoveTowards(transform.position, m_teleportTo, teleportSpeed);

            // When the players position has arrived, stop moving.
            if (Vector3.Distance(transform.position, m_teleportTo) == 0)
                m_arrived = true;
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
                moveTo(m_indi.transform.position);
                m_cooldownTimer.resetTimer();
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
            }

            if (resetTimeOnCancel)
                m_cooldownTimer.resetTimer();
        }
    }

    void ShowIndicator()
    {
        m_indi.SetActive(true);


        Vector3 forward = Camera.main.transform.forward;
        Vector3 right = Camera.main.transform.right;

        Vector3 playerLook = forward * m_length;

        Ray rayForward = new Ray(Camera.main.transform.position, forward);
        Ray rayDown = new Ray(playerLook, Vector3.down);

        RaycastHit hit = new RaycastHit();

        //Debug.DrawRay(Camera.main.transform.position, playerLook, Color.red);

        if (Physics.Raycast(rayForward, out hit, m_length))
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

        else if (Physics.Raycast(rayDown, m_playerLength))
        {
            m_indi.transform.position = hit.point + Vector3.up * 0.5f;
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

        m_indi.transform.position = transform.position + playerLook;
    }
}
