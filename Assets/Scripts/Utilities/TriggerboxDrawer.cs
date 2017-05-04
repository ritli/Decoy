using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class TriggerboxDrawer : MonoBehaviour {

    public Color color;

#if UNITY_EDITOR
    void OnDrawGizmos()
    {
        BoxCollider col = GetComponent<BoxCollider>();

        Mesh m = Resources.Load<MeshFilter>("Cube").sharedMesh;
        Gizmos.color = color;
        Gizmos.DrawWireMesh(m, col.center + transform.position, transform.rotation, new Vector3(col.size.x * transform.localScale.x, col.size.y * transform.localScale.y, col.size.z * transform.localScale.z));
    }
#endif
}
