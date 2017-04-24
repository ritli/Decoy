using UnityEngine;
using System.Collections;

public class TeleportationAdjuster : MonoBehaviour {

    public float threshold;

    private Vector3 m_offset;

	private Vector3 m_direction = new Vector3(0, 0, 0);
	private float m_distance = 0;
	private Rigidbody rb;

	void Start() 
	{
		rb = GetComponent<Rigidbody> ();
	}

	void OnCollisionStay(Collision terrain) 
	{
		Collider thisCollider = GetComponent<Collider> ();
		Collider otherCollider = terrain.collider;

		print (terrain.transform.name);

		if (Physics.ComputePenetration (
			thisCollider, transform.position, transform.rotation,
			otherCollider, terrain.transform.position, terrain.transform.rotation, 
				out m_direction, out m_distance)) 
		{
			Debug.DrawRay (terrain.contacts [0].point, m_direction * m_distance, Color.cyan, 10);
			transform.position += m_direction * m_distance;
		}
	}

	public void checkTeleLocation(float distance)
	{
		RaycastHit hit;
		if (rb.SweepTest (transform.forward, out hit, distance)) 
		{
			
		}
	}

//    void OnCollisionStay(Collision terrain)
//    {
//        Vector3 averageDirection = new Vector3();
//        foreach(ContactPoint contact in terrain.contacts)
//        {
//            Debug.DrawRay(contact.point, contact.normal * 10, Color.cyan);
//            averageDirection += contact.normal;
//        }
//        averageDirection /= terrain.contacts.Length;
//        m_offset = averageDirection * threshold;
//    }

    //void OnCollisionExit()
    //{
    //    m_offset = Vector3.zero;
    //    print("Exit");
    //}

    public Vector3 getOffset()
    {
        return m_offset;
    }

}
