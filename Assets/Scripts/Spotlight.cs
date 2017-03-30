using UnityEngine;
using System.Collections;

public class Spotlight : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.rotation = new Quaternion(180, 0, 0, 1);
	}
}
