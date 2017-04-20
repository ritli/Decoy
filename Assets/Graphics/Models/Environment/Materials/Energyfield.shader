// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3173,x:32844,y:32859,varname:node_3173,prsc:2|diff-8983-RGB,spec-7514-OUT,emission-9102-RGB,amdfl-2774-RGB,alpha-5662-OUT,clip-2718-OUT;n:type:ShaderForge.SFN_TexCoord,id:9604,x:31607,y:32381,varname:node_9604,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:8983,x:32409,y:32377,ptovrint:False,ptlb:node_8983,ptin:_node_8983,varname:_node_8983,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3dc71236d7053c8429982227e13f0c3b,ntxv:2,isnm:False|UVIN-8146-UVOUT;n:type:ShaderForge.SFN_Panner,id:2990,x:31895,y:32378,varname:node_2990,prsc:2,spu:1,spv:0|UVIN-9604-UVOUT,DIST-6635-OUT;n:type:ShaderForge.SFN_Panner,id:8146,x:32151,y:32377,varname:node_8146,prsc:2,spu:0,spv:0.001|UVIN-2990-UVOUT,DIST-9139-OUT;n:type:ShaderForge.SFN_Time,id:79,x:31399,y:32542,varname:node_79,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6635,x:31607,y:32563,varname:node_6635,prsc:2|A-921-OUT,B-79-TSL;n:type:ShaderForge.SFN_Sin,id:5781,x:31607,y:32724,varname:node_5781,prsc:2|IN-8805-TDB;n:type:ShaderForge.SFN_Multiply,id:9139,x:31900,y:32722,varname:node_9139,prsc:2|A-5781-OUT,B-9358-OUT;n:type:ShaderForge.SFN_ValueProperty,id:921,x:31399,y:32485,ptovrint:False,ptlb:node_921,ptin:_node_921,varname:_node_921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_ValueProperty,id:9358,x:31753,y:32836,ptovrint:False,ptlb:node_9358,ptin:_node_9358,varname:_node_9358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:30;n:type:ShaderForge.SFN_Time,id:8805,x:31399,y:32713,varname:node_8805,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:7349,x:31802,y:33223,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:_Ramp,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4f0076afac0b3b943a5bc0f81d626133,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:8903,x:30831,y:33369,ptovrint:False,ptlb:Dissolve amount,ptin:_Dissolveamount,varname:_Dissolveamount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:1535,x:31187,y:33438,varname:node_1535,prsc:2|IN-8903-OUT;n:type:ShaderForge.SFN_RemapRange,id:4156,x:31381,y:33438,varname:node_4156,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1535-OUT;n:type:ShaderForge.SFN_Add,id:2718,x:31576,y:33438,varname:node_2718,prsc:2|A-4156-OUT,B-9308-R;n:type:ShaderForge.SFN_Tex2d,id:9308,x:31381,y:33633,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f336eea1417bea6409b740aeb7de464d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9102,x:32070,y:33041,varname:_node_9102,prsc:2,tex:4f0076afac0b3b943a5bc0f81d626133,ntxv:0,isnm:False|UVIN-3809-OUT,TEX-7349-TEX;n:type:ShaderForge.SFN_Append,id:3809,x:31827,y:33041,varname:node_3809,prsc:2|A-56-OUT,B-5360-OUT;n:type:ShaderForge.SFN_Vector1,id:5360,x:31597,y:33174,varname:node_5360,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:8801,x:31607,y:32925,varname:node_8801,prsc:2|IN-56-OUT;n:type:ShaderForge.SFN_Clamp01,id:56,x:31410,y:33043,varname:node_56,prsc:2|IN-8908-OUT;n:type:ShaderForge.SFN_RemapRange,id:8908,x:31204,y:33043,varname:node_8908,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:4|IN-2718-OUT;n:type:ShaderForge.SFN_Vector1,id:7514,x:32337,y:32735,varname:node_7514,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5662,x:32461,y:33261,ptovrint:False,ptlb:node_5662,ptin:_node_5662,varname:node_5662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:2388,x:32530,y:33091,ptovrint:False,ptlb:node_2388,ptin:_node_2388,varname:node_2388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:7;n:type:ShaderForge.SFN_Color,id:2774,x:32347,y:32861,ptovrint:False,ptlb:node_2774,ptin:_node_2774,varname:node_2774,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6965518,c2:1,c3:0,c4:1;proporder:8983-921-9358-8903-9308-7349-5662-2388-2774;pass:END;sub:END;*/

Shader "FX/Forest Force Field" {
    Properties {
        _node_8983 ("node_8983", 2D) = "black" {}
        _node_921 ("node_921", Float ) = 1.5
        _node_9358 ("node_9358", Float ) = 30
        _Dissolveamount ("Dissolve amount", Range(0, 1)) = 0
        _Noise ("Noise", 2D) = "white" {}
        _Ramp ("Ramp", 2D) = "black" {}
        _node_5662 ("node_5662", Float ) = 0.5
        _node_2388 ("node_2388", Float ) = 7
        _node_2774 ("node_2774", Color) = (0.6965518,1,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8983; uniform float4 _node_8983_ST;
            uniform float _node_921;
            uniform float _node_9358;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _Dissolveamount;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _node_5662;
            uniform float4 _node_2774;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2718 = (((1.0 - _Dissolveamount)*2.0+-1.0)+_Noise_var.r);
                clip(node_2718 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float perceptualRoughness = 1.0 - 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 node_8805 = _Time + _TimeEditor;
                float4 node_79 = _Time + _TimeEditor;
                float2 node_8146 = ((i.uv0+(_node_921*node_79.r)*float2(1,0))+(sin(node_8805.b)*_node_9358)*float2(0,0.001));
                float4 _node_8983_var = tex2D(_node_8983,TRANSFORM_TEX(node_8146, _node_8983));
                float3 diffuseColor = _node_8983_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse += _node_2774.rgb; // Diffuse Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_56 = saturate((node_2718*8.0+-4.0));
                float2 node_3809 = float2(node_56,0.0);
                float4 _node_9102 = tex2D(_Ramp,TRANSFORM_TEX(node_3809, _Ramp));
                float3 emissive = _node_9102.rgb;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_node_5662);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8983; uniform float4 _node_8983_ST;
            uniform float _node_921;
            uniform float _node_9358;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _Dissolveamount;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _node_5662;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2718 = (((1.0 - _Dissolveamount)*2.0+-1.0)+_Noise_var.r);
                clip(node_2718 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float perceptualRoughness = 1.0 - 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 node_8805 = _Time + _TimeEditor;
                float4 node_79 = _Time + _TimeEditor;
                float2 node_8146 = ((i.uv0+(_node_921*node_79.r)*float2(1,0))+(sin(node_8805.b)*_node_9358)*float2(0,0.001));
                float4 _node_8983_var = tex2D(_node_8983,TRANSFORM_TEX(node_8146, _node_8983));
                float3 diffuseColor = _node_8983_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * _node_5662,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Dissolveamount;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2718 = (((1.0 - _Dissolveamount)*2.0+-1.0)+_Noise_var.r);
                clip(node_2718 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
