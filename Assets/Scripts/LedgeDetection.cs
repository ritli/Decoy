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

    void OnCollisionExit()
    {
        m_wallTouched = false;
    }

    public bool findLedge(Vector3 wallNormal)
    {
        Vector3 direction = new Vector3(wallNormal.x * -1, wallNormal.y, wallNormal.z * -1);
        direction = Quaternion.AngleAxis(45f, transform.right) * direction;
        Vector3 higherPosition = transform.position + Vector3.up * ledgeThreshold;

        // A ray above target and facing down 45 degrees towards wall
        m_rayDownTilt.origin = higherPosition;
        m_rayDownTilt.direction = direction;

        RaycastHit hit = new RaycastHit();

        // If ray (let the bodies) hit the floor
        if (Physics.Raycast(m_rayDownTilt, out hit))
        {
            if (Vector3.Angle(hit.normal, Vector3.up) < 45)
            {
                Debug.DrawRay(hit.point, hit.normal, Color.white, 10f); 
            }
        }

        Debug.DrawRay(higherPosition, direction, Color.yellow, 10f);

        return true;
    }

}
