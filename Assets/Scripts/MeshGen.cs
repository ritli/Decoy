using UnityEngine;
using System.Collections;

public class MeshGen : MonoBehaviour
{
    public float radius;
    public float innerRadius;
    public float zOffset;
    public float deg;
    [Range(1, 100)]
    public int vertexCount;

    public bool generate;

    void OnValidate()
    {
        if (generate)
        {

            MeshFilter meshFilter = GetComponent<MeshFilter>();
            var mesh = new Mesh();
            meshFilter.mesh = mesh;

            Vector3[] vertices = new Vector3[vertexCount * 2];

            vertices[1] = new Vector3(innerRadius, 0, zOffset);
            vertices[0] = new Vector3(radius, 0, 0);

            float rotAmount = deg / (vertexCount - 1);

            int count = 1;

            float z;
            float tempRadius;

            for (int i = 2; i < vertexCount * 2; i++)
            {
                tempRadius = innerRadius;
                z = zOffset;

                if ((i - 2) % 2 == 0)
                {
                    count++;
                    tempRadius = radius;
                    z = 0;
                }

                vertices[i] = new Vector3(Mathf.Cos(rotAmount * (count - 1) * Mathf.Deg2Rad) * tempRadius, Mathf.Sin(rotAmount * (count - 1) * Mathf.Deg2Rad) * tempRadius, 0);
            }

            mesh.vertices = vertices;

            int triVCount = (vertexCount * 2 - 2) * 3;

            int[] tri = new int[triVCount];

            int initial = -1;
            int inc = 1;
            int posi = 1;

            int resetCount = 1;
            int compareCount = 4;

            for (int i = 0; i < triVCount; i++)
            {

                initial += inc * posi;

                tri[i] = initial;

                if (resetCount == compareCount)
                {
                    resetCount = 0;
                    posi = -posi;
                    compareCount = compareCount + 6 * posi;
                }

                resetCount += posi;
            }

            #region oldTriAlgorithm
            /*
                        if ((i) % 3 == 0)
                        {
                            tri[i] = 0; 
                        }
                        else
                        { 
                            tri[i] = cTri;
                        }
                        cTri++;
                        if ((i + 1) % 3 == 0)
                        {
                            cTri -= 2;
                        }
                    }
                    */
            #endregion

            mesh.triangles = tri;

            Vector3[] normals = new Vector3[vertexCount * 2];

            for (int i = 0; i < vertexCount * 2; i++)
            {
                if (i < 3)
                {
                    normals[i] = Vector3.forward;
                }
                else
                {
                    normals[i] = -Vector3.forward;
                }

            }

            mesh.normals = normals;

            Vector2[] uv = new Vector2[vertexCount * 2];

            for (int i = 0; i < vertexCount * 2; i++)
            {
                if (i % 4 == 0)
                    uv[i] = new Vector2(0, 0);
                else if (i % 4 == 1)
                    uv[i] = new Vector2(1, 0);
                else if (i % 4 == 2)
                    uv[i] = new Vector2(0, 1);
                else if (i % 4 == 3)
                    uv[i] = new Vector2(1, 1);

                Debug.Log(uv[i]);
            }

            mesh.uv = uv;

            generate = false;
        }
    }

}