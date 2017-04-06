using UnityEngine;
using System.Collections;

public class TriggerTestScript : MonoBehaviour {

    private void OnTriggerEnter(Collider other)
    {
        transform.Rotate(new Vector3(0,90,0));
    }
}
