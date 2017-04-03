using UnityEngine;
using System.Collections;

public class TurretBehaviour : MonoBehaviour {

    public float fieldOfView = 10;
    public float viewDistance = 10;
    Raycast m_Raycast;
    LookAt m_LookAt;
    TurretFirepower m_TurretFirepower;
    bool m_PlayerInFoV;
    GameObject m_Player;
    RaycastHit hit;
	// Use this for initialization
	void Start () 
    {
        m_Raycast = GetComponent<Raycast>();
        m_Player = GameObject.FindGameObjectWithTag(Tags.player);   
	}
	
	// Update is called once per frame
	void Update () 
    {
        Vector3 direction = m_Player.transform.position - transform.position;
        direction.Normalize();
        //decide if player is inside FoV
	    if(Mathf.Abs(Vector3.Angle(transform.forward, direction)) < fieldOfView)
        {
            
            
            //decide if view is obstructed with raycast
            if(m_Raycast.doRaycast(out hit, direction))
            {
                if(hit.transform.gameObject.tag == Tags.player)
                {
                    print("player found");
                }
            }
            
            
        }
	}
 
}
