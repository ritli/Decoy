using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private GameObject m_indObject;
    private Indicator m_indClass;
    private float m_maxDistance = 3f;

    // Use this for initialization
    void Start () {
        m_indObject = GameObject.Find("Ind");
        m_indClass = m_indObject.GetComponent<Indicator>();
	}
	
	// Update is called once per frame
	void Update () {
        if (m_indObject.activeSelf)
        {
            findLedge();
            //print(m_indObject.transform.position);
        }
	}

    public bool findLedge()
    {

        Vector3 forward = Camera.main.transform.forward;
        Ray rayForward = new Ray(Camera.main.transform.position, forward);
        RaycastHit hit = new RaycastHit();

        Vector3 hitNormal = m_indClass.getHitNormal();
        Vector3 rayStartPosition = new Vector3( m_indObject.transform.position.x,
                                                m_indObject.transform.position.y + 5,
                                                m_indObject.transform.position.z);
        rayStartPosition -= hitNormal;

        Ray rayDown = new Ray(rayStartPosition, Vector3.down);

        if (Physics.Raycast(rayDown, out hit, m_maxDistance))
        {
            Debug.DrawLine(hit.point, hit.point + hit.normal * 5, Color.red);
        }
        return true;
    }

}
