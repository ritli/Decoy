using UnityEngine;
using System.Collections;

public class TeleportationAdjuster : MonoBehaviour {

    public float threshold;

    private Vector3 m_offset;

    void OnCollisionStay(Collision terrain)
    {
        Vector3 averageDirection = new Vector3();
        foreach(ContactPoint contact in terrain.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal * 10, Color.cyan);
            averageDirection += contact.normal;
        }
        averageDirection /= terrain.contacts.Length;
        m_offset = averageDirection * threshold;
    }

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
