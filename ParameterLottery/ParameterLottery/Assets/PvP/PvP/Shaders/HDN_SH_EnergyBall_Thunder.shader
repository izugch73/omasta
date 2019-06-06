// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33254,y:32725,varname:node_3138,prsc:2|emission-1695-OUT,voffset-665-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32445,y:32651,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:573,x:32445,y:32820,ptovrint:False,ptlb:Texture_Thunder,ptin:_Texture_Thunder,varname:node_573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-972-OUT;n:type:ShaderForge.SFN_Multiply,id:1695,x:32723,y:32731,varname:node_1695,prsc:2|A-7241-RGB,B-573-R,C-2382-OUT,D-7419-OUT;n:type:ShaderForge.SFN_Fresnel,id:253,x:32392,y:33265,varname:node_253,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:5054,x:32572,y:33265,varname:node_5054,prsc:2,frmn:0,frmx:1,tomn:2,tomx:-0.5|IN-253-OUT;n:type:ShaderForge.SFN_Clamp01,id:7419,x:32753,y:33265,varname:node_7419,prsc:2|IN-5054-OUT;n:type:ShaderForge.SFN_TexCoord,id:9843,x:31750,y:32672,varname:node_9843,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:8204,x:31648,y:32856,varname:node_8204,prsc:2;n:type:ShaderForge.SFN_Floor,id:7349,x:32086,y:32852,varname:node_7349,prsc:2|IN-3727-OUT;n:type:ShaderForge.SFN_Multiply,id:3727,x:31925,y:32852,varname:node_3727,prsc:2|A-8204-T,B-1904-OUT;n:type:ShaderForge.SFN_Multiply,id:1109,x:32253,y:32852,varname:node_1109,prsc:2|A-7349-OUT,B-8072-OUT;n:type:ShaderForge.SFN_Vector1,id:8072,x:32253,y:32972,varname:node_8072,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Add,id:7016,x:32086,y:32636,varname:node_7016,prsc:2|A-9843-U,B-1109-OUT;n:type:ShaderForge.SFN_Append,id:972,x:32238,y:32661,varname:node_972,prsc:2|A-7016-OUT,B-9843-V;n:type:ShaderForge.SFN_Vector1,id:1904,x:31925,y:32975,varname:node_1904,prsc:2,v1:15.37;n:type:ShaderForge.SFN_Frac,id:6085,x:32118,y:33068,varname:node_6085,prsc:2|IN-7647-OUT;n:type:ShaderForge.SFN_Multiply,id:7647,x:31935,y:33068,varname:node_7647,prsc:2|A-2344-OUT,B-6320-OUT;n:type:ShaderForge.SFN_Vector1,id:6320,x:31935,y:33187,varname:node_6320,prsc:2,v1:137.37;n:type:ShaderForge.SFN_RemapRange,id:2382,x:32297,y:33068,varname:node_2382,prsc:2,frmn:0,frmx:1,tomn:0,tomx:4|IN-6085-OUT;n:type:ShaderForge.SFN_Tex2d,id:3920,x:32441,y:33468,ptovrint:False,ptlb:Texture_Offset,ptin:_Texture_Offset,varname:node_3920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-2798-OUT;n:type:ShaderForge.SFN_Add,id:8481,x:32045,y:33453,varname:node_8481,prsc:2|A-2643-OUT,B-131-OUT,C-8612-R;n:type:ShaderForge.SFN_Multiply,id:131,x:31884,y:33524,varname:node_131,prsc:2|A-9843-V,B-1531-OUT;n:type:ShaderForge.SFN_Vector1,id:1531,x:31884,y:33643,varname:node_1531,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:2798,x:32214,y:33421,varname:node_2798,prsc:2|A-2734-OUT,B-8481-OUT;n:type:ShaderForge.SFN_Vector1,id:2734,x:32045,y:33378,varname:node_2734,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:665,x:33047,y:33411,varname:node_665,prsc:2|A-573-G,B-2202-OUT,C-8612-G;n:type:ShaderForge.SFN_RemapRange,id:3318,x:32686,y:33482,varname:node_3318,prsc:2,frmn:0,frmx:1,tomn:-0.15,tomx:0.15|IN-3920-R;n:type:ShaderForge.SFN_RemapRange,id:9307,x:32686,y:33638,varname:node_9307,prsc:2,frmn:0,frmx:1,tomn:-0.15,tomx:0.15|IN-3920-G;n:type:ShaderForge.SFN_RemapRange,id:4657,x:32686,y:33797,varname:node_4657,prsc:2,frmn:0,frmx:1,tomn:-0.4,tomx:0.1|IN-3920-B;n:type:ShaderForge.SFN_Append,id:2202,x:32845,y:33593,varname:node_2202,prsc:2|A-3318-OUT,B-9307-OUT,C-4657-OUT;n:type:ShaderForge.SFN_VertexColor,id:8612,x:32105,y:33743,varname:node_8612,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2643,x:31644,y:33221,varname:node_2643,prsc:2|A-8204-T,B-677-OUT;n:type:ShaderForge.SFN_Vector1,id:677,x:31655,y:33360,varname:node_677,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:2344,x:31739,y:33068,varname:node_2344,prsc:2|A-8204-T,B-8612-R;proporder:7241-573-3920;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_Thunder" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Texture_Thunder ("Texture_Thunder", 2D) = "white" {}
        _Texture_Offset ("Texture_Offset", 2D) = "white" {}
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore metal 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Texture_Thunder; uniform float4 _Texture_Thunder_ST;
            uniform sampler2D _Texture_Offset; uniform float4 _Texture_Offset_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8204 = _Time;
                float2 node_972 = float2((o.uv0.r+(floor((node_8204.g*15.37))*0.25)),o.uv0.g);
                float4 _Texture_Thunder_var = tex2Dlod(_Texture_Thunder,float4(TRANSFORM_TEX(node_972, _Texture_Thunder),0.0,0));
                float2 node_2798 = float2(0.0,((node_8204.g*1.0)+(o.uv0.g*0.2)+o.vertexColor.r));
                float4 _Texture_Offset_var = tex2Dlod(_Texture_Offset,float4(TRANSFORM_TEX(node_2798, _Texture_Offset),0.0,0));
                v.vertex.xyz += (_Texture_Thunder_var.g*float3((_Texture_Offset_var.r*0.3+-0.15),(_Texture_Offset_var.g*0.3+-0.15),(_Texture_Offset_var.b*0.5+-0.4))*o.vertexColor.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_8204 = _Time;
                float2 node_972 = float2((i.uv0.r+(floor((node_8204.g*15.37))*0.25)),i.uv0.g);
                float4 _Texture_Thunder_var = tex2D(_Texture_Thunder,TRANSFORM_TEX(node_972, _Texture_Thunder));
                float3 emissive = (_Color.rgb*_Texture_Thunder_var.r*(frac(((node_8204.g+i.vertexColor.r)*137.37))*4.0+0.0)*saturate(((1.0-max(0,dot(normalDirection, viewDirection)))*-2.5+2.0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore metal 
            #pragma target 3.0
            uniform sampler2D _Texture_Thunder; uniform float4 _Texture_Thunder_ST;
            uniform sampler2D _Texture_Offset; uniform float4 _Texture_Offset_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_8204 = _Time;
                float2 node_972 = float2((o.uv0.r+(floor((node_8204.g*15.37))*0.25)),o.uv0.g);
                float4 _Texture_Thunder_var = tex2Dlod(_Texture_Thunder,float4(TRANSFORM_TEX(node_972, _Texture_Thunder),0.0,0));
                float2 node_2798 = float2(0.0,((node_8204.g*1.0)+(o.uv0.g*0.2)+o.vertexColor.r));
                float4 _Texture_Offset_var = tex2Dlod(_Texture_Offset,float4(TRANSFORM_TEX(node_2798, _Texture_Offset),0.0,0));
                v.vertex.xyz += (_Texture_Thunder_var.g*float3((_Texture_Offset_var.r*0.3+-0.15),(_Texture_Offset_var.g*0.3+-0.15),(_Texture_Offset_var.b*0.5+-0.4))*o.vertexColor.g);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
