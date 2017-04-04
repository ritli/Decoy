using UnityEngine;
using System.Collections;

public class TeleportationAdjuster : MonoBehaviour {

    public float distance;

    private Vector3 m_offset;

    void OnCollisionStay(Collision terrain)
    {

        if (terrain.transform.tag != "Player")
        {
            Vector3 averageDirection = new Vector3();
            foreach (ContactPoint contact in terrain.contacts)
            {
                averageDirection += contact.normal;
            }
            
            averageDirection /= terrain.contacts.Length;
            Debug.DrawRay(terrain.contacts[0].point, averageDirection*10, Color.magenta);
            m_offset = averageDirection * distance; 
        }
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
