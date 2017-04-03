using UnityEngine;
using System.Collections;

public class Spotlight : MonoBehaviour {

    private GameObject target;
    private GameObject player;

	// Use this for initialization
	void Start () {
        target = GameObject.FindGameObjectWithTag("TeleportTarget");
        player = GameObject.FindGameObjectWithTag("Player");
	}
	
	// Update is called once per frame
	void Update () {

        // Set spotlight to be above where the player is aiming and pointed downwards.
        transform.position = new Vector3(target.transform.position.x, player.transform.position.y + 10, target.transform.position.z);
        transform.rotation = Quaternion.Euler(90, 0, 0);
	}
}
