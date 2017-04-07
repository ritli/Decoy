using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private GameObject m_parent;
    private bool m_wallTouched = false;
    private Vector3 m_wallNormal;
    private Ray m_rayDownTilt;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);

    public float ledgeThreshold;


    // Use this for initialization
    void Start () {
        m_parent = transform.parent.gameObject;
    }

    void OnCollisionExit()
    {
        m_wallTouched = false;
    }

	public bool findLedge(RaycastHit wallHit)
    {
		// Creates new direction and position based on wall hit
		Vector3 direction = new Vector3(wallHit.normal.x * -1, wallHit.normal.y * -1, wallHit.normal.z * -1);
        direction = Quaternion.AngleAxis(90f, wallHit.transform.right) * direction;
	
		Vector3 newPosition = transform.position + Vector3.up * ledgeThreshold - wallHit.normal * 2;

        // A ray above target position and facing towards the wall's floor
		m_rayDownTilt.origin = newPosition;
        m_rayDownTilt.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
		Debug.DrawRay(wallHit.point, wallHit.normal * 2, Color.green);

		// Ray moved up and looking down based on wallNormal
		Debug.DrawRay(newPosition, direction * 2, Color.yellow);

		// If ray hit the floor
		if (Physics.Raycast (m_rayDownTilt, out hit)) {
			if (Vector3.Angle (hit.normal, Vector3.up) < 45) {

				// Ray from the floor above ledge
				Debug.DrawRay (hit.point, hit.normal * 2, Color.white);

				// If the point is above where the aim is
				if (hit.point.y >= wallHit.point.y) {
					// Set the new position
					m_newPosition = hit.point;
					return true;
				} 
				// Else set the position to the point on the wall
				else {
					m_newPosition = wallHit.point;
				}
			}
		} 
		// If ray doesn't find floor, set position to point on wall
		else 
		{
			m_newPosition = wallHit.point;
		}
		return false;
	}

	public Vector3 getNewPosition()
	{
		return m_newPosition;
	}
}
