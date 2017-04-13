using UnityEngine;
using System.Collections;

public class LedgeDetection : MonoBehaviour {

    private Vector3 m_wallNormal;
    private Ray m_rayDown;
	private Ray m_rayDown2;
	private Vector3 m_newPosition = new Vector3(0, 0, 0);
	private Raycast m_raycaster;
	private float positionOffset = 0.5f;

	[Tooltip("The distance you need to be from a ledge to be able to climb it")]
    public float ledgeSensitivity;



    // Use this for initialization
    void Start () {
		m_raycaster = GetComponent<Raycast> ();
	}

	public bool findLedge(RaycastHit wallHit)
    {

		// Creates new direction and position based on wall hit
		Vector3 direction = new Vector3(wallHit.normal.x, wallHit.normal.y, wallHit.normal.z) * -1;
//		Debug.DrawRay(wallHit.point, direction * 4, Color.blue);

		// Creates a right vector based on wallNormal and up
		Vector3 hitRight = Vector3.Cross(Vector3.up, wallHit.normal);

		// Rotates around the right vector to face toward the floor
        direction = Quaternion.AngleAxis(-90f, hitRight) * direction.normalized;
		
		Debug.DrawRay(wallHit.point, hitRight * 4, Color.magenta);
//		Debug.DrawRay(wallHit.point, direction * 4, Color.grey);
	

		// Creates a point above and a little bit inside the wall to look for floor

		Vector3 localUp = Vector3.Cross (wallHit.normal, hitRight);

		Vector3 newPosition = wallHit.point + localUp * ledgeSensitivity - wallHit.normal * positionOffset;

        // A ray above target position and facing towards the wall's floor
		m_rayDown.origin = newPosition;
        m_rayDown.direction = direction;

		// Another ray used to determine if other ray is inside terrain
		m_rayDown2.origin = newPosition + localUp * 2;
		m_rayDown2.direction = direction;

        RaycastHit hit = new RaycastHit();

		// Ray based on given wallNormal
		Debug.DrawRay(wallHit.point, wallHit.normal * 4, Color.green);
		Debug.DrawRay(wallHit.point, wallHit.normal * -4, Color.red);

		// Ray moved up and looking down based on wallNormal
		Debug.DrawRay(m_rayDown.origin, m_rayDown.direction * 4, Color.yellow);
		//Debug.DrawRay(m_rayDown2.origin, m_rayDown2.direction * 4, Color.cyan);

		Vector3 rayDownNormal;

		// If ray hit the floor
		if (m_raycaster.doRaycast(out hit, m_rayDown.direction, m_rayDown.origin))
		{
			if (Vector3.Angle(hit.normal, Vector3.up) <= 45)
			{

				// Ray from the floor above ledge
				Debug.DrawRay(hit.point, hit.normal * 5, Color.white);

				// If the floor is above where the aim is
				if (hit.point.y >= wallHit.point.y)
				{
					// Store the found normal to compare with the other ray
					rayDownNormal = hit.normal;

					// Set the new position
					m_newPosition = hit.point;

					// Raycast again to check if the first was inside an object
					if (m_raycaster.doRaycast(out hit, m_rayDown2.direction, m_rayDown2.origin)) 
					{
						
//						Debug.DrawRay(hit.point, hit.normal * 5, Color.red);

						// If the angle between the two rays is different, then the first ray was inside an object
						if (Vector3.Angle (rayDownNormal, hit.normal) > 0) 
						{
							// Update the position to the higher point
							m_newPosition = hit.point;
						}
					}
					return true;
				}
			}
		}
		// If ray doesn't find floor, set position to point on wall
		//print("No floor found");
		m_newPosition = wallHit.point;
		return false;
	}

	public Vector3 getNewPosition()
	{
		return m_newPosition;
	}

}
