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

    private void setActive(bool active)
    {
        isActivated = active;
    }

    private void resetBar()
    {
        m_transform.localPosition = new Vector3(m_transform.localPosition.x, originalPosition, m_transform.localPosition.z);
    }

    private void setDone()
    {
        m_transform.localPosition = new Vector3(m_transform.localPosition.x, targetPosition, m_transform.localPosition.z);
    }

	// Update is called once per frame
	void Update ()
    {
        if (!GameManager.GetPlayer().gameObject.activeSelf)
        {
            setDone();
            setActive(false);
        }
        else if (GameManager.GetPlayer().lockPlayer)
        {
            resetBar();
            setActive(true);
        }
        else
            setActive(false);

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
