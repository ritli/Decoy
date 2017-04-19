using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
public class WaypointIndicator : MonoBehaviour {

    void OnDrawGizmosSelected()
    {
        TurretBehaviour turret = transform.parent.parent.GetComponentInChildren<TurretBehaviour>();

        Mesh m = transform.parent.GetComponent<MeshFilter>().sharedMesh;

        Quaternion rotation = Quaternion.LookRotation(transform.parent.position - transform.position, Vector3.up);

        float xyLength = Mathf.Tan(Mathf.Deg2Rad * (turret.fieldOfView / 2)) * turret.viewDistance;

        Vector3 forward = transform.parent.position - transform.position;

        Vector3 scale = new Vector3(xyLength, xyLength, Vector3.Distance(transform.parent.position, transform.parent.position - (forward.normalized * turret.viewDistance)) * 0.5f);

        Gizmos.color = Color.red;
        Gizmos.DrawWireMesh(m, Vector3.Lerp(transform.parent.position - (forward.normalized * turret.viewDistance) , transform.parent.position, 0.5f), rotation, scale * 100); 
    }

}
#endif
