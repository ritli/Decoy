using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveBar : MonoBehaviour {

    [Tooltip("Determine the amount of pixels moved in y-axis and in what direction.")]
    public float moveAmount = 100.0f;
    public float movementSpeed = 20.0f;


    public bool isActivated = true;
    private float originalPosition;
    private float targetPosition;

    private RectTransform m_transform;

    private void Awake()
    {
        m_transform = GetComponent<RectTransform>();
        originalPosition = m_transform.localPosition.y;
        targetPosition = m_transform.localPosition.y + moveAmount;
    }

    public void setActive(bool active)
    {
        isActivated = active;
    }

    public void resetBar()
    {
        m_transform.localPosition = new Vector3(m_transform.localPosition.x, originalPosition, m_transform.localPosition.z);
    }

	// Update is called once per frame
	void Update ()
    {
        setActive(GameManager.GetPlayer().lockPlayer);

        if (!isActivated)
        {
            // Move image towards the position.
            m_transform.localPosition = new Vector3(transform.localPosition.x,
                Mathf.MoveTowards(transform.localPosition.y, targetPosition, movementSpeed * Time.deltaTime)
                , transform.localPosition.z);

            if (m_transform.localPosition.y == targetPosition)
                isActivated = true;
        }
        else
            resetBar();
	}

}
