using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(TurretBehaviour))]
public class TurretBehaviourEditor : Editor
{
    SerializedProperty viewDistance;
    SerializedProperty fieldOfView;
    SerializedProperty turretState;
    SerializedProperty timeUntilFire;
    SerializedProperty lightAngleOffset;
    SerializedProperty narrowAngle;
    SerializedProperty zoomSpeed;
    SerializedProperty activeColor;
    SerializedProperty idleColor;
    SerializedProperty lightIntensity;
    SerializedProperty idleLightIntensity;
    SerializedProperty playermask;

    Vector3 left, right;
    void OnEnable()
    {
        activeColor = serializedObject.FindProperty("m_activeColor");
        idleColor = serializedObject.FindProperty("m_idleColor");
        lightIntensity = serializedObject.FindProperty("m_alertIntensity");
        idleLightIntensity = serializedObject.FindProperty("m_idleIntensity");
        lightAngleOffset = serializedObject.FindProperty("lightAngleOffset");
        turretState = serializedObject.FindProperty("turretState");
        viewDistance = serializedObject.FindProperty("viewDistance");
        fieldOfView = serializedObject.FindProperty("fieldOfView");
        timeUntilFire = serializedObject.FindProperty("m_timeToKill");
        narrowAngle = serializedObject.FindProperty("m_narrowAngle");
        zoomSpeed = serializedObject.FindProperty("m_zoomSpeed");
        playermask = serializedObject.FindProperty("m_playerMask");

    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();
        //Add the fields to the editor
        EditorGUILayout.PropertyField(turretState);
        EditorGUILayout.PropertyField(fieldOfView);
        EditorGUILayout.PropertyField(viewDistance);
        EditorGUILayout.PropertyField(lightAngleOffset);
        EditorGUILayout.PropertyField(activeColor);
        EditorGUILayout.PropertyField(idleColor);
        EditorGUILayout.PropertyField(lightIntensity);
        EditorGUILayout.PropertyField(idleLightIntensity);
        EditorGUILayout.PropertyField(timeUntilFire);
        EditorGUILayout.PropertyField(narrowAngle);
        EditorGUILayout.PropertyField(zoomSpeed);
        EditorGUILayout.PropertyField(playermask);

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
