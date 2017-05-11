using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

[Serializable]
public class MouseLook
{
    public float XSensitivity = 2f;
    public float YSensitivity = 2f;
    public bool clampVerticalRotation = true;
    public float MinimumX = -90F;
    public float MaximumX = 90F;
    public bool smooth;
    public float smoothTime = 5f;
    public bool lockCursor = true;

    bool rotationReset;

    private Quaternion m_CharacterTargetRot;
    private Quaternion m_CameraTargetRot;
    private bool m_cursorIsLocked = true;

    public void Init(Transform character, Transform camera)
    {
        m_CharacterTargetRot = character.localRotation;
        m_CameraTargetRot = camera.localRotation;
    }

    
	// TODO: Slerp to min/max if aim already is outside bounds
	public void LookRotationLimited(Transform character, Transform camera, Vector3 towardWall, float horizontal, float verticalMin, float verticalMax) 
	{
		// Rotation towards the target position. Used to determine the angle
		Quaternion center = Quaternion.LookRotation(towardWall);

		float yRot = CrossPlatformInputManager.GetAxis("Mouse X") * XSensitivity;
		float xRot = CrossPlatformInputManager.GetAxis("Mouse Y") * YSensitivity;

		Quaternion yRotation = Quaternion.Euler (0f, yRot, 0f);
		m_CameraTargetRot *= Quaternion.Euler(-xRot, 0f, 0f);

		// Horizontal clamp
		Quaternion coming = m_CharacterTargetRot * yRotation;
		float angle = Quaternion.Angle (center, coming);
		if (angle < horizontal)
			m_CharacterTargetRot = coming;

		// Vertical clamp
		Quaternion xRotation = clampRotationX (m_CameraTargetRot, -verticalMax, -verticalMin);
		m_CameraTargetRot = xRotation;

		camera.localRotation = m_CameraTargetRot;
		character.localRotation = m_CharacterTargetRot;
	}

    public Quaternion GetCameraRotation()
    {
        return m_CameraTargetRot;
    }

    public void SetCursorLock(bool value)
    {
        lockCursor = value;
        m_cursorIsLocked = value;
        if(!lockCursor)
        {//we force unlock the cursor if the user disable the cursor locking helper
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
    	}
    }

    public void UpdateCursorLock()
    {
        //if the user set "lockCursor" we check & properly lock the cursos
        if (lockCursor)
            InternalLockUpdate();
    }

    private void InternalLockUpdate()
    {
	    /*
	    if (Input.GetKeyUp(KeyCode.Escape))
	    {
	        m_cursorIsLocked = false;
	    }
	    else if (Input.GetMouseButtonUp(0))
	    {
	        m_cursorIsLocked = true;
	    }
	    */
	    if (m_cursorIsLocked)
	    {
	        Cursor.lockState = CursorLockMode.Locked;
	        Cursor.visible = false;
	    }
	    else if (!m_cursorIsLocked)
	    {
	        Cursor.lockState = CursorLockMode.None;
	        Cursor.visible = true;
	    }
	}

	public void LookRotation(Transform character, Transform camera, bool rotateChar)
	{
		float yRot = CrossPlatformInputManager.GetAxis("Mouse X") * XSensitivity;
		float xRot = CrossPlatformInputManager.GetAxis("Mouse Y") * YSensitivity;

		m_CameraTargetRot *= Quaternion.Euler(-xRot, 0f, 0f);
		m_CharacterTargetRot *= Quaternion.Euler(0f, yRot, 0f);


		if(clampVerticalRotation)
			m_CameraTargetRot = ClampRotationAroundXAxis (m_CameraTargetRot);

		if(smooth)
		{
			character.localRotation = Quaternion.Slerp (character.localRotation, m_CharacterTargetRot, smoothTime * Time.deltaTime);
			camera.localRotation = Quaternion.Slerp (camera.localRotation, m_CameraTargetRot, smoothTime * Time.deltaTime);
		}
		else
		{
			character.localRotation = m_CharacterTargetRot;
			camera.localRotation = m_CameraTargetRot;
		}

		UpdateCursorLock();
	}


	Quaternion clampRotationX(Quaternion q, float minVal, float maxVal) 
	{
		q.x /= q.w;
		q.y /= q.w;
		q.z /= q.w;
		q.w = 1.0f;

		float angleX = 2.0f * Mathf.Rad2Deg * Mathf.Atan(q.x);

		angleX = Mathf.Clamp (angleX, minVal, maxVal);

		q.x = Mathf.Tan (0.5f * Mathf.Deg2Rad * angleX);

		return q;
	}

	Quaternion ClampRotationAroundXAxis(Quaternion q)
	{
	    q.x /= q.w;
	    q.y /= q.w;
	    q.z /= q.w;
	    q.w = 1.0f;

	    float angleX = 2.0f * Mathf.Rad2Deg * Mathf.Atan (q.x);

	    angleX = Mathf.Clamp (angleX, MinimumX, MaximumX);

	    q.x = Mathf.Tan (0.5f * Mathf.Deg2Rad * angleX);

    	return q;
    }
}

