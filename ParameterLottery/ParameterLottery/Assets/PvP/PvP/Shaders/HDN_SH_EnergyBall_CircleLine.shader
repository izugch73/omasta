// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33434,y:32759,varname:node_3138,prsc:2|emission-2984-OUT,alpha-1849-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32577,y:32336,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9757,x:32577,y:32498,ptovrint:False,ptlb:Texture_Color1,ptin:_Texture_Color1,varname:node_9757,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:2299,x:32315,y:33108,varname:node_2299,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2984,x:33138,y:32429,varname:node_2984,prsc:2|A-7241-RGB,B-704-OUT;n:type:ShaderForge.SFN_Tex2d,id:6086,x:32533,y:32684,ptovrint:False,ptlb:Texture_Color2,ptin:_Texture_Color2,varname:node_6086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-5943-OUT;n:type:ShaderForge.SFN_TexCoord,id:3511,x:31852,y:32542,varname:node_3511,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:8489,x:32029,y:32598,varname:node_8489,prsc:2|A-3511-V,B-3089-OUT;n:type:ShaderForge.SFN_Vector1,id:3089,x:32029,y:32717,varname:node_3089,prsc:2,v1:1.2;n:type:ShaderForge.SFN_Subtract,id:9851,x:32207,y:32598,varname:node_9851,prsc:2|A-8489-OUT,B-2299-R;n:type:ShaderForge.SFN_Append,id:5943,x:32387,y:32561,varname:node_5943,prsc:2|A-3511-U,B-9851-OUT;n:type:ShaderForge.SFN_Add,id:8355,x:32791,y:32551,varname:node_8355,prsc:2|A-9757-R,B-9689-OUT;n:type:ShaderForge.SFN_Subtract,id:2093,x:32704,y:32712,varname:node_2093,prsc:2|A-6086-R,B-8251-OUT;n:type:ShaderForge.SFN_Vector1,id:8251,x:32704,y:32831,varname:node_8251,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Clamp01,id:9689,x:32864,y:32712,varname:node_9689,prsc:2|IN-2093-OUT;n:type:ShaderForge.SFN_Multiply,id:1849,x:33119,y:32861,varname:node_1849,prsc:2|A-704-OUT,B-4187-OUT;n:type:ShaderForge.SFN_Vector1,id:4187,x:33108,y:32982,varname:node_4187,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:704,x:33032,y:32584,varname:node_704,prsc:2|A-8355-OUT,B-2299-A,C-1165-OUT;n:type:ShaderForge.SFN_Fresnel,id:1427,x:32329,y:33238,varname:node_1427,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:7015,x:32508,y:33238,varname:node_7015,prsc:2,frmn:0,frmx:1,tomn:2,tomx:0|IN-1427-OUT;n:type:ShaderForge.SFN_Clamp01,id:1165,x:32682,y:33238,varname:node_1165,prsc:2|IN-7015-OUT;proporder:7241-9757-6086;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_CircleLine" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Texture_Color1 ("Texture_Color1", 2D) = "white" {}
        _Texture_Color2 ("Texture_Color2", 2D) = "white" {}
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
            Blend One OneMinusSrcAlpha
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
            uniform sampler2D _Texture_Color1; uniform float4 _Texture_Color1_ST;
            uniform sampler2D _Texture_Color2; uniform float4 _Texture_Color2_ST;
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
                float4 _Texture_Color1_var = tex2D(_Texture_Color1,TRANSFORM_TEX(i.uv0, _Texture_Color1));
                float2 node_5943 = float2(i.uv0.r,((i.uv0.g+1.2)-i.vertexColor.r));
                float4 _Texture_Color2_var = tex2D(_Texture_Color2,TRANSFORM_TEX(node_5943, _Texture_Color2));
                float node_704 = ((_Texture_Color1_var.r+saturate((_Texture_Color2_var.r-0.3)))*i.vertexColor.a*saturate(((1.0-max(0,dot(normalDirection, viewDirection)))*-2.0+2.0)));
                float3 emissive = (_Color.rgb*node_704);
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_704*0.1));
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
