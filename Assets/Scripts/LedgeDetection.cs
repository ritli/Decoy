using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private GameObject m_parent;
	private GameObject m_indicator;
    private bool m_wallTouched = false;
    private Vector3 m_wallNormal;
    private Ray m_rayDown;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);

    public float ledgeThreshold;
	public float positionOffset;


    // Use this for initialization
    void Start () {
        m_parent = transform.parent.gameObject;
		m_indicator = transform.FindChild("LedgeIndicator").gameObject;
		m_indicator.SetActive(false);
	}

    void OnCollisionExit()
    {
		m_indicator.SetActive(false);
		m_wallTouched = false;
    }

	public bool findLedge(RaycastHit wallHit)
    {

		// Creates new direction and position based on wall hit
		Vector3 direction = new Vector3(wallHit.normal.x, wallHit.normal.y, wallHit.normal.z) * -1;
		Debug.DrawRay(wallHit.point, direction * 4, Color.blue);

		// Creates a right vector based on wallNormal and up
		Vector3 hitRight = Vector3.Cross(Vector3.up, wallHit.normal);

		// Rotates around the right vector to face downward
        direction = Quaternion.AngleAxis(-90f, hitRight) * direction.normalized;
		
		Debug.DrawRay(wallHit.point, hitRight * 4, Color.magenta);
		Debug.DrawRay(wallHit.point, direction * 4, Color.grey);
		
		//print("wallHit Y: " + wallHit.normal.y);
	
		// Creates a point above and a little bit inside the wall to look for floor
		Vector3 newPosition = transform.position + Vector3.up * ledgeThreshold - wallHit.normal * positionOffset;

        // A ray above target position and facing towards the wall's floor
		m_rayDown.origin = newPosition;
        m_rayDown.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
		Debug.DrawRay(wallHit.point, wallHit.normal * 4, Color.green);

		// Ray moved up and looking down based on wallNormal
		Debug.DrawRay(m_rayDown.origin, m_rayDown.direction * 8, Color.yellow);

		//print("Yellow ray direction: " + m_rayDown.direction);

		// If ray hit the floor
		if (Physics.Raycast(m_rayDown, out hit))
		{
			if (Vector3.Angle(hit.normal, Vector3.up) <= 45)
			{

				// Ray from the floor above ledge
				Debug.DrawRay(hit.point, hit.normal * 10, Color.white);

				// If the point is above where the aim is
				if (hit.point.y >= wallHit.point.y)
				{

					// Set the new position
					m_newPosition = hit.point;

					m_indicator.SetActive(true);

					return true;
				}
				// Else set the position to the point on the wall
				else
				{
					m_indicator.SetActive(false);
					m_newPosition = wallHit.point;
				}
			}
		}
		// If ray doesn't find floor, set position to point on wall
		else
		{
			//print("No floor found");
			m_indicator.SetActive(false);
			m_newPosition = wallHit.point;
		}
		return false;
	}

	public Vector3 getNewPosition()
	{
		return m_newPosition;
	}
}
