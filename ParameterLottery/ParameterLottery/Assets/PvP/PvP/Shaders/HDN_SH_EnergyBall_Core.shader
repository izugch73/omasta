// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33067,y:32734,varname:node_3138,prsc:2|emission-8638-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32354,y:32734,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Fresnel,id:4355,x:31987,y:32909,varname:node_4355,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:7413,x:32167,y:32909,varname:node_7413,prsc:2|IN-4355-OUT;n:type:ShaderForge.SFN_Multiply,id:8638,x:32767,y:32821,varname:node_8638,prsc:2|A-7241-RGB,B-1949-OUT;n:type:ShaderForge.SFN_RemapRange,id:562,x:32373,y:32919,varname:node_562,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.3|IN-7413-OUT;n:type:ShaderForge.SFN_Add,id:1949,x:32564,y:32919,varname:node_1949,prsc:2|A-562-OUT,B-1489-OUT;n:type:ShaderForge.SFN_RemapRange,id:2659,x:32373,y:33082,varname:node_2659,prsc:2,frmn:0,frmx:1,tomn:-3.5,tomx:2|IN-7413-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:1489,x:32548,y:33082,varname:node_1489,prsc:2,min:0,max:10|IN-2659-OUT;proporder:7241;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_Core" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
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
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_7413 = (1.0 - (1.0-max(0,dot(normalDirection, viewDirection))));
                float3 emissive = (_Color.rgb*((node_7413*0.3+0.0)+clamp((node_7413*5.5+-3.5),0,10)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
