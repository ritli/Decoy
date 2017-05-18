using UnityEngine;
using UnityEngine.Rendering;
using System.Collections;
using System.Collections.Generic;

// See _ReadMe.txt

public class DeferredDecalSystem
{
	static DeferredDecalSystem m_Instance;
	static public DeferredDecalSystem instance {
		get {
			if (m_Instance == null)
				m_Instance = new DeferredDecalSystem();
			return m_Instance;
		}
	}

	internal HashSet<Decal> m_DecalsDiffuse = new HashSet<Decal>();
	internal HashSet<Decal> m_DecalsNormals = new HashSet<Decal>();
	internal HashSet<Decal> m_DecalsBoth = new HashSet<Decal>();

	public void AddDecal (Decal d)
	{
		RemoveDecal (d);
		if (d.m_Kind == Decal.Kind.DiffuseOnly)
			m_DecalsDiffuse.Add (d);
		if (d.m_Kind == Decal.Kind.NormalsOnly)
			m_DecalsNormals.Add (d);
		if (d.m_Kind == Decal.Kind.Both)
			m_DecalsBoth.Add (d);
	}
	public void RemoveDecal (Decal d)
	{
		m_DecalsDiffuse.Remove (d);
		m_DecalsNormals.Remove (d);
		m_DecalsBoth.Remove (d);
	}
}

[ExecuteInEditMode]
public class DeferredDecalRenderer : MonoBehaviour
{
	public Mesh m_CubeMesh;
	private Dictionary<Camera,CommandBuffer> m_Cameras = new Dictionary<Camera,CommandBuffer>();

	public void OnDisable()
	{
		foreach (var cam in m_Cameras)
		{
			if (cam.Key)
			{
				cam.Key.RemoveCommandBuffer (CameraEvent.BeforeLighting, cam.Value);
			}
		}
	}

	public void OnWillRenderObject()
	{
		var act = gameObject.activeInHierarchy && enabled;
		if (!act)
		{
			OnDisable();
			return;
		}

		var cam = Camera.current;
		if (!cam)
			return;

		CommandBuffer buf = null;
		if (m_Cameras.ContainsKey(cam))
		{
			buf = m_Cameras[cam];
			buf.Clear ();
		}
		else
		{
			buf = new CommandBuffer();
			buf.name = "Deferred decals";
			m_Cameras[cam] = buf;

			// set this command buffer to be executed just before deferred lighting pass
			// in the camera
			cam.AddCommandBuffer (CameraEvent.BeforeLighting, buf);
		}

		//@TODO: in a real system should cull decals, and possibly only
		// recreate the command buffer when something has changed.

		var system = DeferredDecalSystem.instance;

		// copy g-buffer normals into a temporary RT
		var normalsID = Shader.PropertyToID("_NormalsCopy");
		buf.GetTemporaryRT (normalsID, -1, -1);
		buf.Blit (BuiltinRenderTextureType.GBuffer2, normalsID);
		// render diffuse-only decals into diffuse channel
		buf.SetRenderTarget (BuiltinRenderTextureType.GBuffer0, BuiltinRenderTextureType.CameraTarget);
		foreach (var decal in system.m_DecalsDiffuse)
		{
            if(decalVisible(decal))
			    buf.DrawMesh (m_CubeMesh, decal.transform.localToWorldMatrix, decal.m_Material);
		}
		// render normals-only decals into normals channel
		buf.SetRenderTarget (BuiltinRenderTextureType.GBuffer2, BuiltinRenderTextureType.CameraTarget);
		foreach (var decal in system.m_DecalsNormals)
		{
            if (decalVisible(decal))
                buf.DrawMesh (m_CubeMesh, decal.transform.localToWorldMatrix, decal.m_Material);
		}
		// render diffuse+normals decals into two MRTs
		RenderTargetIdentifier[] mrt = {BuiltinRenderTextureType.GBuffer0, BuiltinRenderTextureType.GBuffer2};
		buf.SetRenderTarget (mrt, BuiltinRenderTextureType.CameraTarget);
		foreach (var decal in system.m_DecalsBoth)
		{
            if (decalVisible(decal))
                buf.DrawMesh (m_CubeMesh, decal.transform.localToWorldMatrix, decal.m_Material);
		}
		// release temporary normals RT
		buf.ReleaseTemporaryRT (normalsID);
	}
    bool decalVisible(Decal decal)
    {
        //TODO: Check if Worldposto Screenpoint is between 0 and screenpos.X. If yes, then render, else, ignore. Also add a margain. 

        Vector3 posOnScreen = Camera.main.WorldToScreenPoint(decal.transform.position);

        

        if (posOnScreen.z > 0)
        {
            //Calculate and decide if decal is visible
            Vector3 camerapos = Camera.main.transform.position;
            Vector3 decpos = decal.transform.position;

            Vector3 direction = camerapos - decpos;

            Vector3 upwards = Vector3.ProjectOnPlane(Vector3.up, direction);
            
            Vector3 rotated = Quaternion.AngleAxis(90, upwards) * direction.normalized;

            float mult = decal.transform.localScale.x / 2 + 0.25f;

            posOnScreen = Camera.main.WorldToScreenPoint(rotated * mult + decal.transform.position);

            if ((posOnScreen.x > 0 && posOnScreen.x < Screen.width) && (posOnScreen.y > 0 && posOnScreen.y < Screen.height))
            {
                return true;
            }

            rotated = Quaternion.AngleAxis(-90, upwards) * direction.normalized;
            posOnScreen = Camera.main.WorldToScreenPoint(rotated * mult + decal.transform.position);

            if ((posOnScreen.x > 0 && posOnScreen.x < Screen.width) && (posOnScreen.y > 0 && posOnScreen.y < Screen.height))
            {
                return true;
            }
        }
        return false;
    }
}
