using UnityEngine;
using System.Collections;

public class TeleportationAdjuster : MonoBehaviour {

    public float threshold;

    void OnCollisionStay(Collision terrain)
    {
        Vector3 averageDirection = new Vector3();
        foreach(ContactPoint contact in terrain.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal * 10, Color.cyan);
            averageDirection += contact.normal;
        }
        averageDirection /= terrain.contacts.Length;
        transform.position += averageDirection * threshold;
    }

    public void adjustToAim(Vector3 position)
    {
        transform.position = position;
    }

}
