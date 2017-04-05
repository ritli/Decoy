using UnityEngine;
using System.Collections;

public class Indicator : MonoBehaviour {

    PlayerController m_player;
    public GameObject m_indi;
    float m_playerLength;

    public float m_length;

	void Start ()
    {
        m_player = GameManager.GetPlayer();
        m_indi.SetActive(false);
    }
	
	void Update () {

        if (Input.GetButton("Teleport"))
        {

            ShowIndicator();
        }
        if (Input.GetButtonUp("Teleport"))
        {
            m_indi.SetActive(false);
            transform.position = m_indi.transform.position;
        }
    }

    void ShowIndicator()
    {
        m_indi.SetActive(true);


        Vector3 forward = Camera.main.transform.forward;
        Vector3 right = Camera.main.transform.right;

        Vector3 playerLook = forward * m_length;

        print(playerLook);


        Ray rayForward = new Ray(transform.position, forward);
        Ray rayDown = new Ray(playerLook, Vector3.down);

        RaycastHit hit = new RaycastHit();


        if (Physics.Raycast(rayForward, out hit, m_length))
        {
            if (Vector3.Angle(hit.normal, Vector3.up) > 45)
            {
                m_indi.transform.position = hit.point + hit.normal;
            }
            else
            {
                m_indi.transform.position = hit.point + Vector3.up * 0.2f;
                
            }
            return;

        }

        else if (Physics.Raycast(rayDown, m_playerLength))
        {
            //m_indi.transform.position = hit.point + Vector3.up * 0.5f;
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
