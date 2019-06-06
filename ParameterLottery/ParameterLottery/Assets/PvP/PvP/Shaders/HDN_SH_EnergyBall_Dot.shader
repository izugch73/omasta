// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34049,y:32807,varname:node_3138,prsc:2|emission-1141-OUT,alpha-6481-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:33416,y:32052,ptovrint:False,ptlb:Color_Outline,ptin:_Color_Outline,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Fresnel,id:836,x:32471,y:32813,varname:node_836,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:1196,x:32627,y:32813,varname:node_1196,prsc:2,frmn:0,frmx:1,tomn:6,tomx:-0.3|IN-836-OUT;n:type:ShaderForge.SFN_Clamp01,id:2112,x:32782,y:32813,cmnt:Outline,varname:node_2112,prsc:2|IN-1196-OUT;n:type:ShaderForge.SFN_Fresnel,id:8900,x:32471,y:32977,varname:node_8900,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:6584,x:32627,y:32977,varname:node_6584,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:2.2|IN-8900-OUT;n:type:ShaderForge.SFN_Clamp01,id:2840,x:32782,y:32977,cmnt:Outline Inner,varname:node_2840,prsc:2|IN-6584-OUT;n:type:ShaderForge.SFN_Multiply,id:2454,x:33063,y:32915,varname:node_2454,prsc:2|A-2112-OUT,B-2840-OUT;n:type:ShaderForge.SFN_Tex2d,id:5237,x:32784,y:32271,ptovrint:False,ptlb:Texture_Dot,ptin:_Texture_Dot,varname:node_5237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:9961,x:33246,y:32915,varname:node_9961,prsc:2|IN-2454-OUT;n:type:ShaderForge.SFN_Subtract,id:6467,x:33308,y:32685,varname:node_6467,prsc:2|A-5002-OUT,B-9961-OUT;n:type:ShaderForge.SFN_Multiply,id:6808,x:33639,y:32694,cmnt:Outline Col,varname:node_6808,prsc:2|A-4576-OUT,B-4388-OUT,C-7241-RGB;n:type:ShaderForge.SFN_Vector1,id:4388,x:33639,y:32819,varname:node_4388,prsc:2,v1:6;n:type:ShaderForge.SFN_Tex2d,id:6345,x:32784,y:32467,ptovrint:False,ptlb:Texture_Ref,ptin:_Texture_Ref,varname:node_6345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baaa0e1a27f856541a6fabb812e9555e,ntxv:0,isnm:False|UVIN-5564-OUT;n:type:ShaderForge.SFN_NormalVector,id:1775,x:32132,y:32467,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:9467,x:32291,y:32467,varname:node_9467,prsc:2,tffrom:0,tfto:3|IN-1775-OUT;n:type:ShaderForge.SFN_RemapRange,id:9485,x:32460,y:32467,varname:node_9485,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9467-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5564,x:32626,y:32467,varname:node_5564,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9485-OUT;n:type:ShaderForge.SFN_Min,id:5940,x:33044,y:32426,varname:node_5940,prsc:2|A-6345-B,B-6820-OUT;n:type:ShaderForge.SFN_Vector1,id:6820,x:33044,y:32538,varname:node_6820,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Subtract,id:5002,x:33194,y:32380,varname:node_5002,prsc:2|A-5237-R,B-5940-OUT;n:type:ShaderForge.SFN_Clamp01,id:4576,x:33468,y:32694,varname:node_4576,prsc:2|IN-6467-OUT;n:type:ShaderForge.SFN_Subtract,id:4879,x:33044,y:32203,varname:node_4879,prsc:2|A-5237-R,B-6345-R;n:type:ShaderForge.SFN_Multiply,id:1757,x:33649,y:32245,varname:node_1757,prsc:2|A-4703-OUT,B-7564-RGB,C-8762-OUT;n:type:ShaderForge.SFN_Color,id:7564,x:33416,y:31887,ptovrint:False,ptlb:Color_Base,ptin:_Color_Base,varname:node_7564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:1141,x:33858,y:32694,varname:node_1141,prsc:2|A-1757-OUT,B-6808-OUT;n:type:ShaderForge.SFN_Clamp01,id:4703,x:33387,y:32203,varname:node_4703,prsc:2|IN-5432-OUT;n:type:ShaderForge.SFN_Vector1,id:8762,x:33649,y:32364,varname:node_8762,prsc:2,v1:3;n:type:ShaderForge.SFN_OneMinus,id:2050,x:32947,y:32723,varname:node_2050,prsc:2|IN-2112-OUT;n:type:ShaderForge.SFN_Subtract,id:5432,x:33212,y:32203,varname:node_5432,prsc:2|A-4879-OUT,B-2050-OUT;n:type:ShaderForge.SFN_Multiply,id:6481,x:33669,y:32965,varname:node_6481,prsc:2|A-4703-OUT,B-7501-OUT;n:type:ShaderForge.SFN_Vector1,id:7501,x:33669,y:33084,varname:node_7501,prsc:2,v1:0.7;proporder:7241-5237-6345-7564;pass:END;sub:END;*/

Shader "Shader Forge/HDN_SH_EnergyBall_Dot" {
    Properties {
        _Color_Outline ("Color_Outline", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Texture_Dot ("Texture_Dot", 2D) = "white" {}
        _Texture_Ref ("Texture_Ref", 2D) = "white" {}
        _Color_Base ("Color_Base", Color) = (0.5,0.5,0.5,1)
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
            uniform float4 _Color_Outline;
            uniform sampler2D _Texture_Dot; uniform float4 _Texture_Dot_ST;
            uniform sampler2D _Texture_Ref; uniform float4 _Texture_Ref_ST;
            uniform float4 _Color_Base;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float4 _Texture_Dot_var = tex2D(_Texture_Dot,TRANSFORM_TEX(i.uv0, _Texture_Dot));
                float2 node_5564 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb*0.5+0.5).rg;
                float4 _Texture_Ref_var = tex2D(_Texture_Ref,TRANSFORM_TEX(node_5564, _Texture_Ref));
                float node_2112 = saturate(((1.0-max(0,dot(normalDirection, viewDirection)))*-6.3+6.0)); // Outline
                float node_4703 = saturate(((_Texture_Dot_var.r-_Texture_Ref_var.r)-(1.0 - node_2112)));
                float3 emissive = ((node_4703*_Color_Base.rgb*3.0)+(saturate(((_Texture_Dot_var.r-min(_Texture_Ref_var.b,0.15))-(1.0 - (node_2112*saturate(((1.0-max(0,dot(normalDirection, viewDirection)))*3.2+-1.0))))))*6.0*_Color_Outline.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_4703*0.7));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
