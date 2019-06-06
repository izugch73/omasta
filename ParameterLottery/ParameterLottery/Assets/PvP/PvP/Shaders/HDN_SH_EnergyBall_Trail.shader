// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33341,y:32786,varname:node_3138,prsc:2|emission-4801-OUT,alpha-7151-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32849,y:32693,ptovrint:False,ptlb:Color_Base,ptin:_Color_Base,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9767,x:32507,y:32747,ptovrint:False,ptlb:Texture_Color,ptin:_Texture_Color,varname:node_9767,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-307-OUT;n:type:ShaderForge.SFN_Multiply,id:4801,x:33009,y:32788,varname:node_4801,prsc:2|A-7241-RGB,B-9767-R,C-7610-OUT;n:type:ShaderForge.SFN_Multiply,id:7151,x:32966,y:33010,varname:node_7151,prsc:2|A-9767-R,B-4502-OUT;n:type:ShaderForge.SFN_Vector1,id:4502,x:32966,y:33143,varname:node_4502,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Time,id:8607,x:31348,y:33045,varname:node_8607,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9560,x:31518,y:33045,varname:node_9560,prsc:2|A-8607-T,B-6424-OUT;n:type:ShaderForge.SFN_Vector1,id:6424,x:31518,y:33162,varname:node_6424,prsc:2,v1:-3;n:type:ShaderForge.SFN_RemapRange,id:460,x:32490,y:33049,varname:node_460,prsc:2,frmn:0,frmx:1,tomn:0.9,tomx:1.3|IN-5055-OUT;n:type:ShaderForge.SFN_TexCoord,id:1277,x:31447,y:32710,varname:node_1277,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5532,x:32086,y:32730,varname:node_5532,prsc:2|A-1277-U,B-460-OUT;n:type:ShaderForge.SFN_Append,id:307,x:32317,y:32794,varname:node_307,prsc:2|A-5532-OUT,B-1277-V;n:type:ShaderForge.SFN_Tex2d,id:8143,x:31997,y:33046,ptovrint:False,ptlb:Texture_Indirect,ptin:_Texture_Indirect,varname:node_8143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-4152-OUT;n:type:ShaderForge.SFN_Add,id:6393,x:31699,y:32937,varname:node_6393,prsc:2|A-1277-U,B-9560-OUT;n:type:ShaderForge.SFN_Append,id:4152,x:31857,y:32937,varname:node_4152,prsc:2|A-6393-OUT,B-1277-V;n:type:ShaderForge.SFN_RemapRange,id:2708,x:31997,y:33224,varname:node_2708,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-1277-U;n:type:ShaderForge.SFN_Clamp01,id:8021,x:32164,y:33224,varname:node_8021,prsc:2|IN-2708-OUT;n:type:ShaderForge.SFN_Add,id:917,x:32204,y:33095,varname:node_917,prsc:2|A-8143-R,B-8021-OUT;n:type:ShaderForge.SFN_Clamp01,id:5055,x:32361,y:33095,varname:node_5055,prsc:2|IN-917-OUT;n:type:ShaderForge.SFN_Vector1,id:7610,x:33009,y:32910,varname:node_7610,prsc:2,v1:1.5;proporder:7241-9767-8143;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_Trail" {
    Properties {
        _Color_Base ("Color_Base", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Texture_Color ("Texture_Color", 2D) = "white" {}
        _Texture_Indirect ("Texture_Indirect", 2D) = "white" {}
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
            uniform sampler2D _Texture_Color; uniform float4 _Texture_Color_ST;
            uniform sampler2D _Texture_Indirect; uniform float4 _Texture_Indirect_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_8607 = _Time;
                float2 node_4152 = float2((i.uv0.r+(node_8607.g*(-3.0))),i.uv0.g);
                float4 _Texture_Indirect_var = tex2D(_Texture_Indirect,TRANSFORM_TEX(node_4152, _Texture_Indirect));
                float2 node_307 = float2((i.uv0.r*(saturate((_Texture_Indirect_var.r+saturate((i.uv0.r*-2.0+1.0))))*0.4+0.9)),i.uv0.g);
                float4 _Texture_Color_var = tex2D(_Texture_Color,TRANSFORM_TEX(node_307, _Texture_Color));
                float3 emissive = (_Color_Base.rgb*_Texture_Color_var.r*1.5);
                float3 finalColor = emissive;
                return fixed4(finalColor,(_Texture_Color_var.r*0.5));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
