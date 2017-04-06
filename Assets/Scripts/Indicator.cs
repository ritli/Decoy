using UnityEngine;
using System.Collections;

public class Indicator : MonoBehaviour {

    public GameObject m_decoy;
    public GameObject m_indi;
    float m_playerLength = 3f;
    private bool m_cancelTeleport = false;
    private bool ableToTeleport = true;
    private Timer m_cooldownTimer;

    public float m_length;
    public bool resetTimeOnCancel = false;
    public float teleportCooldown = 0.0f;

	void Start ()
    {
        m_cooldownTimer = GetComponent<Timer>();
        m_indi.SetActive(false);
        m_cooldownTimer.setTimeout(teleportCooldown);
        m_cooldownTimer.forwardTime(teleportCooldown);
    }

    // Handle input for teleportation controls.
	void Update () {
        
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
                Vector3 lastPos = transform.position;
                transform.position = m_indi.transform.position;
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

        if (Physics.Raycast(rayForward, out hit, m_length))
        {

            //If true then surface is a ceiling
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

        //Checks if raycast is near walkable ground
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
