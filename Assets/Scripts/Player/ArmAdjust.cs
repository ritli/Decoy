using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArmAdjust : MonoBehaviour {

    public float m_offsetAmount;

    MouseLook m_MouseLook;
    Transform m_cameraTransform;

    float m_initialOffset;

	void Start () {
        m_MouseLook = Camera.main.GetComponentInParent<PlayerController>().m_MouseLook;

        m_cameraTransform = Camera.main.transform;
        m_initialOffset = transform.position.y - m_cameraTransform.position.y;
    }
	
	void Update ()
    {
        MoveArms();
    }

    void MoveArms()
    {
        float xRotation = m_cameraTransform.rotation.eulerAngles.x;

        if (xRotation > 180)
        {
            xRotation -= 360;
        }

        float min = m_initialOffset - m_offsetAmount;
        float max = m_initialOffset + m_offsetAmount;

        float t = (xRotation - m_MouseLook.MinimumX) / (- m_MouseLook.MinimumX + m_MouseLook.MaximumX);

        float offset = Mathf.SmoothStep(min, max, t);

        transform.localPosition = new Vector3(transform.localPosition.x, offset, transform.localPosition.z);
    }

}
