using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(TurretBehaviour))]
public class TurretBehaviourEditor : Editor
{
    [Range(0, 300)]
    SerializedProperty viewDistance;
    [Range(0,180)]
    SerializedProperty fieldOfView;
    SerializedProperty turretState;

    SerializedProperty timeUntilFire;

    SerializedProperty lightAngleOffset;

    Vector3 left, right;
    void OnEnable()
    {
        lightAngleOffset = serializedObject.FindProperty("lightAngleOffset");
        turretState = serializedObject.FindProperty("turretState");
        viewDistance = serializedObject.FindProperty("viewDistance");
        fieldOfView = serializedObject.FindProperty("fieldOfView");
        timeUntilFire = serializedObject.FindProperty("m_timeToKill");
        

    }
    public override void OnInspectorGUI()
    {
        //edit properties
        //base.OnInspectorGUI();
        serializedObject.Update();
        //Add the fields to the editor
        EditorGUILayout.PropertyField(turretState);
        EditorGUILayout.PropertyField(fieldOfView);
        EditorGUILayout.PropertyField(viewDistance);
        EditorGUILayout.PropertyField(lightAngleOffset);
        EditorGUILayout.PropertyField(timeUntilFire);
        //apply values
        serializedObject.ApplyModifiedProperties();

    }
    public void OnSceneGUI()
    {
        //Draw FoV
        //Calculate were field of view is
        left = (Quaternion.AngleAxis(-fieldOfView.floatValue / 2, Vector3.up) * Vector3.forward) * viewDistance.floatValue;
        right = (Quaternion.AngleAxis(fieldOfView.floatValue / 2, Vector3.up) * Vector3.forward) * viewDistance.floatValue;
        //Offset rotation
        left = (target as TurretBehaviour).transform.rotation * left;
        right = (target as TurretBehaviour).transform.rotation * right;

        //Offset direction to object position and draw the line
        Debug.DrawLine((target as TurretBehaviour).transform.position, left + (target as TurretBehaviour).transform.position, Color.red);
        Debug.DrawLine((target as TurretBehaviour).transform.position, right + (target as TurretBehaviour).transform.position, Color.red);
    }

}
