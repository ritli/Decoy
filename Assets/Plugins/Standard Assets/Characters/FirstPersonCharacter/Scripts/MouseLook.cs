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
	private float rotationX = 0f;
	private float rotationY = 0f;

    public void Init(Transform character, Transform camera)
    {
        m_CharacterTargetRot = character.localRotation;
        m_CameraTargetRot = camera.localRotation;
    }

    

	public void LookRotationLimited(Transform character, Transform camera) 
	{
		float yRot = CrossPlatformInputManager.GetAxis("Mouse X") * XSensitivity;
		float xRot = CrossPlatformInputManager.GetAxis("Mouse Y") * YSensitivity;

		m_CameraTargetRot *= Quaternion.Euler(-xRot, 0f, 0f);
		m_CharacterTargetRot *= Quaternion.Euler(0f, yRot, 0f);

		// TODO: ### Clampa horisontellt ###
//		float newRotX = 0;
//		float newRotY = 0;
//		if (m_CameraTargetRot.eulerAngles.x < ClampAngle(-20))
//			newRotX = 360 - 45;
//		else if (m_CameraTargetRot.eulerAngles.x > ClampAngle(45))
//			newRotX = 0 + 45;
//		else
//			newRotX = m_CameraTargetRot.eulerAngles.x;
//
//		if (m_CameraTargetRot.eulerAngles.y < ClampAngle(-45))
//			newRotY = 360 - 45;
//		else if (m_CameraTargetRot.eulerAngles.y > ClampAngle(45))
//			newRotY = 0 + 45;
//		else 
//			newRotY = m_CameraTargetRot.eulerAngles.y;
//
//		Debug.Log(m_CameraTargetRot.eulerAngles.x);
//		m_CameraTargetRot.eulerAngles = new Vector3 (	newRotX, 
//														newRotY, 
//														m_CameraTargetRot.eulerAngles.z);

		m_CameraTargetRot = clampRotationX(m_CameraTargetRot, -20, 45);
		//m_CameraTargetRot = clampRotationY(m_CameraTargetRot, -20, 45);

		character.localRotation = m_CharacterTargetRot;
		camera.localRotation = m_CameraTargetRot;

//
//		rotationY += Input.GetAxis("Mouse X") * XSensitivity;
//		rotationY = Mathf.Clamp(rotationY, -45, 45);
//
//		rotationX += Input.GetAxis("Mouse Y") * YSensitivity;
//		rotationX = Mathf.Clamp(rotationX, -20, 45);
//
//		camera.localEulerAngles = new Vector3(-rotationX, 0, camera.localEulerAngles.z);
//		character.localEulerAngles = new Vector3(0f, rotationY, character.localEulerAngles.z);
//
//		UpdateCursorLock();
	}

	public float ClampAngle(float angle) {
		if(angle < 0f)
			return angle + (360f * (int) ((angle / 360f) + 1));
		else if(angle > 360f)
			return angle - (360f * (int) (angle / 360f));
		else
			return angle;
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

		rotationY = yRot;
		rotationX = xRot;

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

