using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioFootsteps : MonoBehaviour {

    FMODUnity.StudioEventEmitter m_stepEmitter;
    FMODUnity.StudioEventEmitter m_landEmitter;

    public float m_rayLength;
    public LayerMask m_layer;
    public float m_paramVal;

    bool m_recentlyLanded;


	void Start () {
        m_stepEmitter = transform.FindChild("Step").GetComponent<FMODUnity.StudioEventEmitter>();
        m_landEmitter = transform.FindChild("Land").GetComponent<FMODUnity.StudioEventEmitter>();
    }

    void OnEnable()
    {
        transform.parent.GetComponent<PlayerController>().onLand += PlayLandSound;
        transform.parent.GetComponent<PlayerController>().GetWalkBob().onStep += PlayStepSound;
    }

    void OnDisable()
    {
        transform.parent.GetComponent<PlayerController>().onLand -= PlayLandSound;
        transform.parent.GetComponent<PlayerController>().GetWalkBob().onStep -= PlayStepSound;
    }

    void PlayStepSound()
    {
        if (!m_recentlyLanded)
        {
            SetParameter();

            m_stepEmitter.SetParameter("Material", m_paramVal);
            m_stepEmitter.Play();
        }

    }

    void PlayLandSound()
    {
        StartCoroutine(LandDelay());

        SetParameter();

        m_landEmitter.SetParameter("Material", m_paramVal);
        m_landEmitter.Play();
    }

    void SetParameter()
    {
        switch (GetFloorTag())
        {
            case "Asphalt":
                m_paramVal = 1;
                break;

            case "Concrete":
                m_paramVal = 2;
                break;

            case "Metal":
                m_paramVal = 3;
                break;

            case "Sand":
                m_paramVal = 4;
                break;

            default:
                m_paramVal = 1;
                break;
        }
    }

    IEnumerator LandDelay()
    {
        m_recentlyLanded = true;

        yield return new WaitForSeconds(0.3f);

        m_recentlyLanded = false;
    }

    string GetFloorTag()
    {
        Ray ray = new Ray(transform.position, Vector3.down * m_rayLength);

        RaycastHit hitInfo;

        if (Physics.Raycast(ray, out hitInfo, m_rayLength, m_layer))
        {
            return hitInfo.transform.tag;
        }

        return "Untagged";


    }
}
