// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34192,y:32688,varname:node_3138,prsc:2|emission-9361-OUT,alpha-7822-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32552,y:32371,ptovrint:False,ptlb:Color_Base,ptin:_Color_Base,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Fresnel,id:4254,x:32236,y:32872,varname:node_4254,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:682,x:32490,y:32535,varname:node_682,prsc:2,frmn:0,frmx:1,tomn:0.25,tomx:0|IN-4254-OUT;n:type:ShaderForge.SFN_Clamp01,id:5501,x:32660,y:32535,cmnt:Out Grea,varname:node_5501,prsc:2|IN-682-OUT;n:type:ShaderForge.SFN_Multiply,id:9361,x:33665,y:32592,varname:node_9361,prsc:2|A-7241-RGB,B-3243-OUT;n:type:ShaderForge.SFN_RemapRange,id:2857,x:32491,y:32702,varname:node_2857,prsc:2,frmn:0,frmx:1,tomn:3,tomx:-6|IN-4254-OUT;n:type:ShaderForge.SFN_Clamp01,id:3499,x:32684,y:32702,varname:node_3499,prsc:2|IN-2857-OUT;n:type:ShaderForge.SFN_RemapRange,id:2875,x:32491,y:32854,varname:node_2875,prsc:2,frmn:0,frmx:1,tomn:2.2,tomx:-9|IN-4254-OUT;n:type:ShaderForge.SFN_Clamp01,id:8156,x:32669,y:32854,varname:node_8156,prsc:2|IN-2875-OUT;n:type:ShaderForge.SFN_Subtract,id:947,x:32858,y:32771,varname:node_947,prsc:2|A-3499-OUT,B-8156-OUT;n:type:ShaderForge.SFN_Clamp01,id:2834,x:33036,y:32771,varname:node_2834,prsc:2|IN-947-OUT;n:type:ShaderForge.SFN_Add,id:3243,x:33435,y:32660,varname:node_3243,prsc:2|A-5501-OUT,B-2380-OUT,C-7123-OUT,D-588-OUT;n:type:ShaderForge.SFN_Multiply,id:2380,x:33205,y:32771,cmnt:Outline Grea,varname:node_2380,prsc:2|A-2834-OUT,B-9347-OUT;n:type:ShaderForge.SFN_Vector1,id:9347,x:33205,y:32890,varname:node_9347,prsc:2,v1:0.3;n:type:ShaderForge.SFN_RemapRange,id:8882,x:32491,y:33012,varname:node_8882,prsc:2,frmn:0,frmx:1,tomn:0.6,tomx:-2.8|IN-4254-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7123,x:32669,y:33012,varname:node_7123,prsc:2,min:0,max:0.5|IN-8882-OUT;n:type:ShaderForge.SFN_RemapRange,id:2926,x:32491,y:33173,varname:node_2926,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:-5|IN-4254-OUT;n:type:ShaderForge.SFN_Clamp01,id:588,x:32669,y:33173,varname:node_588,prsc:2|IN-2926-OUT;n:type:ShaderForge.SFN_Clamp01,id:2742,x:33701,y:32932,varname:node_2742,prsc:2|IN-3243-OUT;n:type:ShaderForge.SFN_Multiply,id:7822,x:33883,y:32932,varname:node_7822,prsc:2|A-2742-OUT,B-8222-OUT;n:type:ShaderForge.SFN_Vector1,id:8222,x:33883,y:33052,varname:node_8222,prsc:2,v1:0.8;proporder:7241;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_Grea" {
    Properties {
        _Color_Base ("Color_Base", Color) = (0.07843138,0.3921569,0.7843137,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore metal 
            #pragma target 3.0
            uniform float4 _Color_Base;
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
                float node_4254 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float node_3243 = (saturate((node_4254*-0.25+0.25))+(saturate((saturate((node_4254*-9.0+3.0))-saturate((node_4254*-11.2+2.2))))*0.3)+clamp((node_4254*-3.4+0.6),0,0.5)+saturate((node_4254*-5.4+0.4)));
                float3 emissive = (_Color_Base.rgb*node_3243);
                float3 finalColor = emissive;
                return fixed4(finalColor,(saturate(node_3243)*0.8));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
