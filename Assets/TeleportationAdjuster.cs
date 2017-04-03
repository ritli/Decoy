using UnityEngine;
using System.Collections;

public class TeleportationAdjuster : MonoBehaviour {

    void OnCollisionStay(Collision terrain)
    {
        foreach(ContactPoint contact in terrain.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal * 10, Color.cyan);
        }

    }
}
