using UnityEngine;
using System.Collections;
using System;

public class TeleportationAdjuster : MonoBehaviour {

    private Vector3 m_offset;
    private float m_height;
    private float m_width;
    private ArrayList m_collisions = new ArrayList();

    /*
     * Separat kollision och visuell
     * Flytta endast det visuella i riktningen av kontaktens normaler
     * Räkna ut offset baserat på normalerna då den hämtas av playerteleport
     */

    void Start()
    {
        m_height = GetComponent<CapsuleCollider>().height/2;
        m_width = GetComponent<CapsuleCollider>().radius;
    }

    void OnCollisionStay(Collision collision)
    {
        Vector3 averageDirection = new Vector3();
        foreach (ContactPoint contact in collision.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal * 10, Color.cyan);
            averageDirection += contact.normal;
        }
        averageDirection /= collision.contacts.Length;

        //averageDirection.Normalize();

        averageDirection.x *= m_width;
        averageDirection.z *= m_width;
        averageDirection.y *= m_height;

        m_offset = averageDirection;
    }

    //void OnCollisionStay(Collision terrain)
    //{
    //    if (terrain.transform.tag != "Player")
    //    {
    //        removeCollision(terrain);
    //        m_collisions.Add(terrain);
    //    }
    //}

    //private void recaculcateNormal()
    //{
    //    print(m_collisions.Count);
    //    Vector3 averageNormal = new Vector3(0, 0, 0);
    //    int nrOfNormals = 0;
    //    for (int i = 0; i < m_collisions.Count; i++)
    //    {
    //        for (int j = 0; j < ((Collision)m_collisions[i]).contacts.Length; j++)
    //        {
    //            averageNormal += ((Collision)m_collisions[i]).contacts[j].normal;
    //            nrOfNormals++;
    //        }
    //    }
    //    if (m_collisions.Count > 0)
    //    {
    //        averageNormal /= nrOfNormals;
    //    }
    //    averageNormal.Normalize();

    //    averageNormal.x *= m_width;
    //    averageNormal.z *= m_width;
    //    averageNormal.y *= m_height;

    //    m_offset = averageNormal;
    //}

    //void OnCollisionExit(Collision terrain)
    //{
    //    removeCollision(terrain);
    //}

    //void removeCollision(Collision collision)
    //{
    //    for (int i = 0; i < m_collisions.Count; i++)
    //    {
    //        if (((Collision)m_collisions[i]).gameObject.name == collision.gameObject.name)
    //            m_collisions.Remove(m_collisions[i]);
    //    }
    //}

    public Vector3 getOffset()
    {
        //recaculcateNormal();
        return m_offset;
    }

    public void clearCollisions()
    {
        m_collisions.Clear();
    }

}
