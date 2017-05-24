using UnityEngine;
using System.Collections;

public class LedgeTele : FindLedge {

	// Variables for findValidPosition()
	private float m_distanceDelta = 0.5f;
	private bool m_indPositionSet = false;
	private bool m_isTeleporting = false;
	private Vector3 m_validIndPosition = new Vector3(0, 0, 0);
	private Vector3 m_invalidPosition = new Vector3 (0, 0, 0);
    private Collider[] overlap;
    private GameObject validSpaceCol;
    private Collider testCol;

    void Start() 
    {
		validSpaceCol = GameObject.FindGameObjectWithTag(Tags.validSpaceCol).gameObject;
        testCol = validSpaceCol.GetComponent<CapsuleCollider>();
        testCol.enabled = false;
    }

	/*
	 * Does a reverse sweep test to find a position with enough space for the player. 
     * It uses a CapsuleCollider attached as a child to the player and puts it where the player is aiming. 
     * It then checks for all overlapping colliders and moves the CapsuleCollider towards the player as long 
     * as it intersects with any of the found colliders.
	 */
	public bool findEnoughSpace(Vector3 origin, out Vector3 target) 
	{
        //Vector3 relocatedPosition = hit.point + hit.normal * 0.1f;

        // Set position of the test collider object to the player's
        testCol.enabled = true;
		testCol.transform.position = origin;

        // Looks for overlapping colliders using player measurements
        overlap = Physics.OverlapCapsule(testCol.bounds.min, testCol.bounds.max, m_playerWidth);
        
        // Iterates through all overlapping colliders and moves the testCol closer to the player if they intersect
        foreach (Collider col in overlap)
        {
            if (col != testCol && col.tag != Tags.player)
            {
                if (testCol.bounds.Intersects(col.bounds))
                {
                    testCol.transform.position = Vector3.MoveTowards(testCol.transform.position, transform.position, m_playerWidth);
                }
            }
        }
        target = testCol.transform.position;
        testCol.enabled = false;
		return true;
	}
		
	public void arrivedAtWall() 
	{
		m_isLedgeBlocked = false;
		m_isTeleporting = false;
	}

	public void startTeleporting() 
	{
		m_isTeleporting = true;
	}

	public bool isTeleporting() 
	{
		return m_isTeleporting;	
	}

	/*
	 * Always returns the point on the wall
	 */
	public Vector3 getWallPoint() 
	{
		return getWallPoint();
	}

	public Vector3 getInvalidPosition() 
	{
		return m_invalidPosition;
	}

	public bool isIndPosSet() 
	{
		return m_indPositionSet;
	}

	public Vector3 getValidIndPosition() 
	{
		return m_validIndPosition;
	}
}
