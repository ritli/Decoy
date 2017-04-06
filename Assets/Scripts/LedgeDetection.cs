using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private GameObject m_parent;
    private bool m_wallTouched = false;
    private Vector3 m_wallNormal;
    private Ray m_rayDownTilt;

    public float ledgeThreshold;


    // Use this for initialization
    void Start () {
        m_parent = transform.parent.gameObject;

    }
	
	// Update is called once per frame
	void Update () {
        if (m_parent.activeSelf)
        {
            if (m_wallTouched)
            {
                // Look for edge
                
            }
        } else
        {
            m_wallTouched = false;
        }
    }


    void OnCollisionStay(Collision collision)
    {
        print("Collision");
        foreach (ContactPoint contact in collision.contacts)
        {
            if (Vector3.Angle(contact.normal, Vector3.up) > 45) 
            {
                m_wallNormal = contact.normal;
                m_wallTouched = true;
                findLedge();
                print("Wall touched");
            } else
            {
                m_wallTouched = false;
            }
        }
    }

    void OnCollisionExit()
    {
        print("Exit");
        m_wallTouched = false;
    }

    public bool findLedge()
    {
        Vector3 direction = new Vector3(m_wallNormal.x * -1, m_wallNormal.y, m_wallNormal.z * -1);
        direction = Quaternion.AngleAxis(45f, transform.right) * direction;

        // A ray facing down 45 degrees towards wall
        m_rayDownTilt = new Ray(transform.position + Vector3.up * ledgeThreshold, direction);

        RaycastHit hit = new RaycastHit();

        if (Physics.Raycast(m_rayDownTilt, out hit))
        {
            if (Vector3.Angle(hit.normal, Vector3.up) < 45)
            {
                Debug.DrawRay(hit.point, hit.normal, Color.white, 10f); 
            }
        }

        Debug.DrawRay(transform.position, direction, Color.yellow, 10f);

        return true;
    }

}
