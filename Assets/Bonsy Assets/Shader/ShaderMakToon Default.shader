Shader "ShaderMak/Toon Default" {
	Properties {
		[Header((RealToon V4.1.2))] [Header((No Outline x Default))] [Space(20)] [Enum(Off,2,On,0)] _DoubleSided ("Double Sided", Float) = 2
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Texture Color))] _Texture ("Texture", 2D) = "white" {}
		_MainColor ("Main Color", Vector) = (0.8014706,0.8014706,0.8014706,1)
		[MaterialToggle] _Transparent ("Transparent", Float) = 0
		[MaterialToggle] _TexturePatternStyle ("Texture Pattern Style", Float) = 0
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Normal Map))] [Normal] _NormalMap ("Normal Map", 2D) = "bump" {}
		_NormalIntensity ("Intensity", Float) = 1
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Color Adjustment))] _Saturation ("Saturation", Range(0, 2)) = 1
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Self Lit))] _SelfLitIntensity ("Intensity", Range(0, 1)) = 0
		_SelfLitPower ("Power", Float) = 1
		_SelfLitColor ("Color", Vector) = (1,1,1,1)
		[MaterialToggle] _SelfLitHighContrast ("High Contrast", Float) = 0
		[Space(8)] _MaskSelfLit ("Mask Self Lit", 2D) = "white" {}
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Gloss))] _GlossIntensity ("Intensity", Float) = 0
		_Glossiness ("Glossiness", Range(0, 1)) = 0.5
		_GlossColor ("Color", Vector) = (1,1,1,1)
		[MaterialToggle] _MainTextureColorGloss ("Main Texture Color Gloss", Float) = 0
		[MaterialToggle] _SoftGloss ("Soft Gloss", Float) = 0
		[Space(8)] _MaskGloss ("Mask Gloss", 2D) = "white" {}
		[Space(8)] [Header(Gloss Texture)] _GlossTextureIntensity ("Intensity", Range(0, 1)) = 0
		_GlossTexture ("Gloss Texture", 2D) = "black" {}
		_GlossTextureRotate ("Rotate", Float) = 0
		[MaterialToggle] _GlossTextureFollowObjectRotation ("Follow Object Rotation", Float) = 0
		[MaterialToggle] _GlossTextureFollowLight ("Follow Light", Float) = 0
		[MaterialToggle] _ShadowMaskGlossTexture ("Shadow Mask Gloss Texture", Float) = 1
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Shadow))] _ShadowOverrideColor ("Override Color", Vector) = (1,1,1,1)
		_ShadowAddLight ("Add Light", Float) = 1
		[Space(8)] _AdjustLightPointSpotlight ("Adjust Light (Point & Spotlight)", Float) = 1
		_SaturationPointSpotlight ("Saturation (Point & Spotlight)", Range(0, 2)) = 1
		[Space(8)] _AdjustLightDirectionalLight ("Adjust Light (Directional Light)", Float) = 1
		[Space(8)] [Header(Self Shadow)] _SelfShadowIntensity ("Intensity", Range(0, 1)) = 1
		_SelfShadowColor ("Color", Vector) = (0,0,0,1)
		_SelfShadowSize ("Size", Range(0, 1)) = 0.56
		_SelfShadowHardness ("Hardness", Range(0, 1)) = 1
		[MaterialToggle] _SelfShadowatViewDirection ("Self Shadow at View Direction", Float) = 0
		[Space(8)] [Header(Shadow Color Texture)] _ShadowColorTextureIntensity ("Intensity", Range(0, 1)) = 0
		_ShadowColorTexture ("Shadow Color Texture", 2D) = "black" {}
		_ShadowColorTexturePower ("Power", Float) = 0
		[Space(8)] [Header(ShadowT)] _ShadowTIntensity ("Intensity", Range(0, 1)) = 0
		_ShadowTTexture ("ShadowT Texture", 2D) = "white" {}
		_ShadowTLightSize ("Light Size", Float) = 0.5
		_ShadowTShadowSize ("Shadow Size", Float) = 0
		[MaterialToggle] _ShowShadowTOnLight ("Show On Light", Float) = 1
		[MaterialToggle] _ShowShadowTOnSelfShadow ("Show On Self Shadow", Float) = 0
		[MaterialToggle] _LightFalloffAffectShadowT ("Light Falloff Affect ShadowT", Float) = 0
		[Space(8)] [Header(Shadow PTexture)] _ShadowPTextureIntensity ("Intensity", Range(0, 1)) = 0
		_ShadowPTexture ("Shadow PTexture", 2D) = "white" {}
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Lighting))] [MaterialToggle] _UseGILighting ("Use GI Lighting", Float) = 1
		[MaterialToggle] _GIFlatShade ("GI Flat Shade", Float) = 0
		_GIShadeSize ("GI Shade Size", Range(0, 1)) = 0
		[Space(8)] [MaterialToggle] _DirectionalLightAffectShadow ("Directional Light Affect Shadow", Float) = 0
		[MaterialToggle] _EnableLightFalloff ("Enable Light Falloff", Float) = 1
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Reflection))] _ReflectionIntensity ("Intensity", Range(0, 1)) = 0
		_DefaultReflectionRoughtness ("Default Reflection Roughtness", Range(0, 1)) = 0
		[MaterialToggle] _ReflectionBlendToMainTexture ("Reflection Blend To Main Texture", Float) = 0
		[Space(8)] _MaskReflection ("Mask Reflection", 2D) = "white" {}
		[Space(8)] [Header(FReflection)] [MaterialToggle] _UseFReflection ("Use FReflection", Float) = 0
		_FReflection ("FReflection", 2D) = "white" {}
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((Fresnel))] _FresnelIntensity ("Intensity", Range(0, 1)) = 0
		_FresnelColor ("Color", Vector) = (1,1,1,1)
		_FresnelFill ("Fill", Float) = 1
		[MaterialToggle] _HardEdgeFresnel ("Hard Edge Fresnel", Float) = 0
		[MaterialToggle] _FresnelOnLight ("On Light", Float) = 1
		[MaterialToggle] _FresnelOnShadowDark ("On Shadow/Dark", Float) = 0
		[Space(10)] [Header(xxxxxxxxxxxxxxxx)] [Header((See Through))] _RefVal ("ID", Float) = 0
		[Enum(None,8,A,0,B,2)] _Oper ("Set 1", Float) = 8
		[Enum(None,8,A,6,B,7)] _Compa ("Set 2", Float) = 8
	}
	SubShader {
		Tags { "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
		Pass {
			Name "FORWARD"
			Tags { "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
			Blend One OneMinusSrcAlpha, One OneMinusSrcAlpha
			Cull Off
			Stencil {
				Comp Disabled
				Pass Keep
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 8618
			Program "vp" {
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat2.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat10 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat3.xyz = vec3(u_xlat10) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    vs_TEXCOORD4.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    u_xlat10 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat10 = unity_MatrixV[0].z * u_xlat1.x + u_xlat10;
					    u_xlat10 = unity_MatrixV[2].z * u_xlat1.z + u_xlat10;
					    u_xlat10 = unity_MatrixV[3].z * u_xlat1.w + u_xlat10;
					    vs_TEXCOORD5.z = (-u_xlat10);
					    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat0.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * vec3(u_xlat12);
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat2.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat2.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat10 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat3.xyz = vec3(u_xlat10) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    vs_TEXCOORD4.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    u_xlat10 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat10 = unity_MatrixV[0].z * u_xlat1.x + u_xlat10;
					    u_xlat10 = unity_MatrixV[2].z * u_xlat1.z + u_xlat10;
					    u_xlat10 = unity_MatrixV[3].z * u_xlat1.w + u_xlat10;
					    vs_TEXCOORD5.z = (-u_xlat10);
					    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat0.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * vec3(u_xlat12);
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat2.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat17;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat2.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat17 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat3.xyz = vec3(u_xlat17) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    vs_TEXCOORD4.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat6;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat0.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    vs_TEXCOORD5.xyw = u_xlat0.xyw;
					    vs_TEXCOORD6 = u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat18;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat18 = inversesqrt(u_xlat18);
					    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat3.x = inversesqrt(u_xlat3.x);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * u_xlat3.xxx;
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD6 = u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat17;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat2.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat17 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat3.xyz = vec3(u_xlat17) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    vs_TEXCOORD4.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat6;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat0.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    vs_TEXCOORD5.xyw = u_xlat0.xyw;
					    vs_TEXCOORD6 = u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat18;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat18 = inversesqrt(u_xlat18);
					    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat3.x = inversesqrt(u_xlat3.x);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * u_xlat3.xxx;
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD6 = u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat2.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat10 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat3.xyz = vec3(u_xlat10) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    vs_TEXCOORD4.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    u_xlat10 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat10 = unity_MatrixV[0].z * u_xlat1.x + u_xlat10;
					    u_xlat10 = unity_MatrixV[2].z * u_xlat1.z + u_xlat10;
					    u_xlat10 = unity_MatrixV[3].z * u_xlat1.w + u_xlat10;
					    vs_TEXCOORD5.z = (-u_xlat10);
					    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat0.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * vec3(u_xlat12);
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat2.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat2.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat10 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat3.xyz = vec3(u_xlat10) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    vs_TEXCOORD4.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    u_xlat10 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat10 = unity_MatrixV[0].z * u_xlat1.x + u_xlat10;
					    u_xlat10 = unity_MatrixV[2].z * u_xlat1.z + u_xlat10;
					    u_xlat10 = unity_MatrixV[3].z * u_xlat1.w + u_xlat10;
					    vs_TEXCOORD5.z = (-u_xlat10);
					    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat0.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * vec3(u_xlat12);
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat2.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat17;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat2.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat17 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat3.xyz = vec3(u_xlat17) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    vs_TEXCOORD4.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat6;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat0.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    vs_TEXCOORD5.xyw = u_xlat0.xyw;
					    vs_TEXCOORD6 = u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat18;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat18 = inversesqrt(u_xlat18);
					    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat3.x = inversesqrt(u_xlat3.x);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * u_xlat3.xxx;
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD6 = u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat17;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat2.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat17 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat3.xyz = vec3(u_xlat17) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    vs_TEXCOORD4.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat6;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat0.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    vs_TEXCOORD5.xyw = u_xlat0.xyw;
					    vs_TEXCOORD6 = u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat18;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat18 = inversesqrt(u_xlat18);
					    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat3.x = inversesqrt(u_xlat3.x);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * u_xlat3.xxx;
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD6 = u_xlat2;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_4_1[22];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_5_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_5_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					bool u_xlatb56;
					float u_xlat57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlatb56 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb56){
					        u_xlatb56 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb56)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat56 = u_xlat9.y * 0.25 + 0.75;
					        u_xlat57 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat56, u_xlat57);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat56 = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_6_1[5];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_7_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_7_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					int u_xlati54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					bool u_xlatb56;
					float u_xlat57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati54 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati54].xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlatb56 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb56){
					        u_xlatb56 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb56)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat56 = u_xlat9.y * 0.25 + 0.75;
					        u_xlat57 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat56, u_xlat57);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat56 = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_4_1[22];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_5_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_5_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					bool u_xlatb56;
					float u_xlat57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlatb56 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb56){
					        u_xlatb56 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb56)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat56 = u_xlat9.y * 0.25 + 0.75;
					        u_xlat57 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat56, u_xlat57);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat56 = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_6_1[5];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_7_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_7_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					int u_xlati54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					bool u_xlatb56;
					float u_xlat57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati54 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati54].xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlatb56 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb56){
					        u_xlatb56 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb56)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat56 = u_xlat9.y * 0.25 + 0.75;
					        u_xlat57 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat56, u_xlat57);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat56 = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_5_1[8];
						mat4x4 unity_MatrixV;
						vec4 unused_5_3[10];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_6_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_6_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					bool u_xlatb22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					float u_xlat57;
					bool u_xlatb57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlat9.x = unity_MatrixV[0].z;
					    u_xlat9.y = unity_MatrixV[1].z;
					    u_xlat9.z = unity_MatrixV[2].z;
					    u_xlat56 = dot(u_xlat1.xyz, u_xlat9.xyz);
					    u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat57 = dot(u_xlat9.xyz, u_xlat9.xyz);
					    u_xlat57 = sqrt(u_xlat57);
					    u_xlat57 = (-u_xlat56) + u_xlat57;
					    u_xlat56 = unity_ShadowFadeCenterAndType.w * u_xlat57 + u_xlat56;
					    u_xlat56 = u_xlat56 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlatb57 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb57){
					        u_xlatb22 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb22)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat22.x = u_xlat9.y * 0.25 + 0.75;
					        u_xlat58 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat58, u_xlat22.x);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat22.x = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat22.x = clamp(u_xlat22.x, 0.0, 1.0);
					    u_xlat9.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat9 = texture(_ShadowMapTexture, u_xlat9.xy);
					    u_xlat56 = u_xlat56 + u_xlat9.x;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat22.x = min(u_xlat56, u_xlat22.x);
					    u_xlat56 = (u_xlatb57) ? u_xlat22.x : u_xlat56;
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_7_1[5];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_8_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_8_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					bool u_xlatb22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					int u_xlati54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					int u_xlati56;
					float u_xlat57;
					bool u_xlatb57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati54 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati54].xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlati56 = unity_StereoEyeIndex << 2;
					    u_xlat9.x = unity_StereoMatrixV[u_xlati56 / 4][u_xlati56 % 4].z;
					    u_xlat9.y = unity_StereoMatrixV[(u_xlati56 + 1) / 4][(u_xlati56 + 1) % 4].z;
					    u_xlat9.z = unity_StereoMatrixV[(u_xlati56 + 2) / 4][(u_xlati56 + 2) % 4].z;
					    u_xlat56 = dot(u_xlat1.xyz, u_xlat9.xyz);
					    u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat57 = dot(u_xlat9.xyz, u_xlat9.xyz);
					    u_xlat57 = sqrt(u_xlat57);
					    u_xlat57 = (-u_xlat56) + u_xlat57;
					    u_xlat56 = unity_ShadowFadeCenterAndType.w * u_xlat57 + u_xlat56;
					    u_xlat56 = u_xlat56 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlatb57 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb57){
					        u_xlatb22 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb22)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat22.x = u_xlat9.y * 0.25 + 0.75;
					        u_xlat58 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat58, u_xlat22.x);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat22.x = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat22.x = clamp(u_xlat22.x, 0.0, 1.0);
					    u_xlat9.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat9 = texture(_ShadowMapTexture, u_xlat9.xy);
					    u_xlat56 = u_xlat56 + u_xlat9.x;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat22.x = min(u_xlat56, u_xlat22.x);
					    u_xlat56 = (u_xlatb57) ? u_xlat22.x : u_xlat56;
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_5_1[8];
						mat4x4 unity_MatrixV;
						vec4 unused_5_3[10];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_6_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_6_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					bool u_xlatb22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					float u_xlat57;
					bool u_xlatb57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlat9.x = unity_MatrixV[0].z;
					    u_xlat9.y = unity_MatrixV[1].z;
					    u_xlat9.z = unity_MatrixV[2].z;
					    u_xlat56 = dot(u_xlat1.xyz, u_xlat9.xyz);
					    u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat57 = dot(u_xlat9.xyz, u_xlat9.xyz);
					    u_xlat57 = sqrt(u_xlat57);
					    u_xlat57 = (-u_xlat56) + u_xlat57;
					    u_xlat56 = unity_ShadowFadeCenterAndType.w * u_xlat57 + u_xlat56;
					    u_xlat56 = u_xlat56 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlatb57 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb57){
					        u_xlatb22 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb22)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat22.x = u_xlat9.y * 0.25 + 0.75;
					        u_xlat58 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat58, u_xlat22.x);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat22.x = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat22.x = clamp(u_xlat22.x, 0.0, 1.0);
					    u_xlat9.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat9 = texture(_ShadowMapTexture, u_xlat9.xy);
					    u_xlat56 = u_xlat56 + u_xlat9.x;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat22.x = min(u_xlat56, u_xlat22.x);
					    u_xlat56 = (u_xlatb57) ? u_xlat22.x : u_xlat56;
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 _SelfLitColor;
						float _SelfLitPower;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 _ShadowPTexture_ST;
						float _ShadowPTextureIntensity;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						float _FresnelOnShadowDark;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						float _DefaultReflectionRoughtness;
						float _UseGILighting;
						float _GIFlatShade;
						float _GIShadeSize;
						vec4 _ShadowColorTexture_ST;
						float _ShadowAddLight;
						vec4 _ShadowOverrideColor;
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _ShadowColorTexturePower;
						float _ShadowColorTextureIntensity;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
						float _SelfLitHighContrast;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[38];
						vec4 unity_SHAr;
						vec4 unity_SHAg;
						vec4 unity_SHAb;
						vec4 unity_SHBr;
						vec4 unity_SHBg;
						vec4 unity_SHBb;
						vec4 unity_SHC;
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_10;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_7_1[5];
					};
					layout(std140) uniform UnityReflectionProbes {
						vec4 unused_8_0[3];
						vec4 unity_SpecCube0_HDR;
						vec4 unused_8_2[4];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowColorTexture;
					uniform  sampler2D _ShadowPTexture;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  samplerCube unity_SpecCube0;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec4 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec4 u_xlat14;
					bvec2 u_xlatb14;
					vec3 u_xlat15;
					vec4 u_xlat16;
					vec3 u_xlat17;
					vec2 u_xlat18;
					bvec2 u_xlatb18;
					float u_xlat19;
					bool u_xlatb19;
					vec3 u_xlat20;
					vec3 u_xlat22;
					bool u_xlatb22;
					vec3 u_xlat29;
					float u_xlat36;
					float u_xlat37;
					vec2 u_xlat51;
					float u_xlat54;
					int u_xlati54;
					bool u_xlatb54;
					float u_xlat55;
					bool u_xlatb55;
					float u_xlat56;
					int u_xlati56;
					float u_xlat57;
					bool u_xlatb57;
					float u_xlat58;
					float u_xlat59;
					bool u_xlatb59;
					float u_xlat60;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati54 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati54].xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat54 = inversesqrt(u_xlat54);
					    u_xlat2.xyz = vec3(u_xlat54) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat55 = min(u_xlat55, 1.0);
					    u_xlat55 = (-u_xlat55) + 1.0;
					    u_xlat4.z = sqrt(u_xlat55);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat55 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat55);
					    u_xlat55 = dot((-u_xlat2.xyz), u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat3.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + (-u_xlat2.xyz);
					    u_xlat4.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat4.yz = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat55 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat4.x = u_xlat55 * u_xlat4.y;
					    u_xlat22.xz = u_xlat4.xz + (-vs_TEXCOORD0.xy);
					    u_xlat22.xz = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat22.xz + vs_TEXCOORD0.xy;
					    u_xlat22.xz = u_xlat22.xz * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat5 = texture(_Texture, u_xlat22.xz);
					    u_xlat55 = u_xlat5.w + -1.0;
					    u_xlat55 = _Transparent * u_xlat55 + 0.5;
					    u_xlatb55 = u_xlat55<0.0;
					    if(((int(u_xlatb55) * int(0xffffffffu)))!=0){discard;}
					    u_xlat55 = dot(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat6.xyz = vec3(u_xlat55) * _WorldSpaceLightPos0.xyz;
					    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat54) + u_xlat6.xyz;
					    u_xlat55 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat55 = inversesqrt(u_xlat55);
					    u_xlat8.xyz = vec3(u_xlat55) * u_xlat7.xyz;
					    u_xlati56 = unity_StereoEyeIndex << 2;
					    u_xlat9.x = unity_StereoMatrixV[u_xlati56 / 4][u_xlati56 % 4].z;
					    u_xlat9.y = unity_StereoMatrixV[(u_xlati56 + 1) / 4][(u_xlati56 + 1) % 4].z;
					    u_xlat9.z = unity_StereoMatrixV[(u_xlati56 + 2) / 4][(u_xlati56 + 2) % 4].z;
					    u_xlat56 = dot(u_xlat1.xyz, u_xlat9.xyz);
					    u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat57 = dot(u_xlat9.xyz, u_xlat9.xyz);
					    u_xlat57 = sqrt(u_xlat57);
					    u_xlat57 = (-u_xlat56) + u_xlat57;
					    u_xlat56 = unity_ShadowFadeCenterAndType.w * u_xlat57 + u_xlat56;
					    u_xlat56 = u_xlat56 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlatb57 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb57){
					        u_xlatb22 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat9.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat9.xyz;
					        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat9.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat9.xyz = (bool(u_xlatb22)) ? u_xlat9.xyz : vs_TEXCOORD1.xyz;
					        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat22.x = u_xlat9.y * 0.25 + 0.75;
					        u_xlat58 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat9.x = max(u_xlat58, u_xlat22.x);
					        u_xlat9 = texture(unity_ProbeVolumeSH, u_xlat9.xzw);
					    } else {
					        u_xlat9.x = float(1.0);
					        u_xlat9.y = float(1.0);
					        u_xlat9.z = float(1.0);
					        u_xlat9.w = float(1.0);
					    }
					    u_xlat22.x = dot(u_xlat9, unity_OcclusionMaskSelector);
					    u_xlat22.x = clamp(u_xlat22.x, 0.0, 1.0);
					    u_xlat9.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat9 = texture(_ShadowMapTexture, u_xlat9.xy);
					    u_xlat56 = u_xlat56 + u_xlat9.x;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat22.x = min(u_xlat56, u_xlat22.x);
					    u_xlat56 = (u_xlatb57) ? u_xlat22.x : u_xlat56;
					    u_xlat9.xyz = u_xlat5.xyz * _MainColor.xyz;
					    u_xlat57 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat22.x = u_xlat57 + u_xlat57;
					    u_xlat22.xz = u_xlat0.xy * (-u_xlat22.xx) + u_xlat2.xy;
					    u_xlat22.xz = u_xlat22.xz * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat22.xz = (-u_xlat22.xz) + vec2(1.0, 1.0);
					    u_xlat22.xz = u_xlat22.xz * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat10 = texture(_FReflection, u_xlat22.xz);
					    u_xlat22.xz = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat11 = texture(_MaskReflection, u_xlat22.xz);
					    u_xlat29.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat29.xyz = u_xlat10.xyz * u_xlat29.xyz + u_xlat9.xyz;
					    u_xlat29.xyz = (-u_xlat10.xyz) + u_xlat29.xyz;
					    u_xlat10.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat22.x = (-u_xlat11.x) + 1.0;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + (-u_xlat10.xyz);
					    u_xlat10.xyz = u_xlat22.xxx * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = (-u_xlat5.xyz) * _MainColor.xyz + u_xlat10.xyz;
					    u_xlat10.xyz = u_xlat10.xyz * vec3(_ReflectionIntensity);
					    u_xlat10.xyz = vec3(_UseFReflection) * u_xlat10.xyz + u_xlat9.xyz;
					    u_xlat22.xz = vs_TEXCOORD0.xy * _ShadowColorTexture_ST.xy + _ShadowColorTexture_ST.zw;
					    u_xlat12 = texture(_ShadowColorTexture, u_xlat22.xz);
					    u_xlat29.xyz = u_xlat12.xyz * u_xlat12.xyz + (-u_xlat12.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTexturePower, _ShadowColorTexturePower, _ShadowColorTexturePower)) * u_xlat29.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = _MainColor.xyz * u_xlat29.xyz + (-u_xlat10.xyz);
					    u_xlat29.xyz = vec3(vec3(_ShadowColorTextureIntensity, _ShadowColorTextureIntensity, _ShadowColorTextureIntensity)) * u_xlat29.xyz + u_xlat10.xyz;
					    u_xlat4.xy = u_xlat4.xz * _ShadowPTexture_ST.xy + _ShadowPTexture_ST.zw;
					    u_xlat4 = texture(_ShadowPTexture, u_xlat4.xy);
					    u_xlat4.xyz = u_xlat4.xxx * u_xlat29.xyz + (-u_xlat29.xyz);
					    u_xlat4.xyz = vec3(_ShadowPTextureIntensity) * u_xlat4.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * _ShadowOverrideColor.xyz;
					    u_xlat58 = _ShadowAddLight * 0.800000012;
					    u_xlat12.xyz = vec3(u_xlat58) * u_xlat4.xyz;
					    u_xlatb59 = u_xlat56>=0.00100000005;
					    u_xlat60 = u_xlatb59 ? 1.0 : float(0.0);
					    u_xlat59 = (u_xlatb59) ? -1.0 : -0.0;
					    u_xlat59 = u_xlat56 + u_xlat59;
					    u_xlat59 = _EnableLightFalloff * u_xlat59 + u_xlat60;
					    u_xlat13.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat13 = texture(_ShadowTTexture, u_xlat13.xy);
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat54) + (-u_xlat6.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat6.xyz;
					    u_xlat54 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat54 = u_xlat54 * 0.5 + 0.5;
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat19 = u_xlat56 * u_xlat54 + (-u_xlat54);
					    u_xlat19 = _LightFalloffAffectShadowT * u_xlat19 + u_xlat54;
					    u_xlat19 = u_xlat19 * _ShadowTLightSize;
					    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
					    u_xlat1.x = u_xlat13.x * u_xlat1.x + u_xlat19;
					    u_xlat1.x = u_xlat1.x * 0.5;
					    u_xlat1.x = roundEven(u_xlat1.x);
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat1.x = u_xlat1.x + -1.0;
					    u_xlat1.x = u_xlat1.x * _ShadowTIntensity;
					    u_xlat19 = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat37 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat56 = (-u_xlat19) + 0.899999976;
					    u_xlat54 = u_xlat54 * u_xlat37 + (-u_xlat19);
					    u_xlat19 = float(1.0) / u_xlat56;
					    u_xlat54 = u_xlat54 * u_xlat19;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat19 = u_xlat54 * -2.0 + 3.0;
					    u_xlat54 = u_xlat54 * u_xlat54;
					    u_xlat37 = u_xlat54 * u_xlat19;
					    u_xlat56 = _ShowShadowTOnSelfShadow * u_xlat1.x + 1.0;
					    u_xlat1.x = _ShowShadowTOnLight * u_xlat1.x + 1.0;
					    u_xlat1.x = (-u_xlat56) + u_xlat1.x;
					    u_xlat1.x = u_xlat37 * u_xlat1.x + u_xlat56;
					    u_xlat54 = (-u_xlat19) * u_xlat54 + 1.0;
					    u_xlat6.xyz = vec3(u_xlat54) * _SelfShadowColor.xyz + (-vec3(u_xlat37));
					    u_xlat6.xyz = u_xlat6.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + vec3(u_xlat37);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat6.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlatb54 = _LightColor0.y>=_LightColor0.z;
					    u_xlat54 = u_xlatb54 ? 1.0 : float(0.0);
					    u_xlat19 = (-_LightColor0.z) + _LightColor0.y;
					    u_xlat54 = u_xlat54 * u_xlat19 + _LightColor0.z;
					    u_xlatb19 = _LightColor0.x>=u_xlat54;
					    u_xlat19 = u_xlatb19 ? 1.0 : float(0.0);
					    u_xlat56 = (-u_xlat54) + _LightColor0.x;
					    u_xlat54 = u_xlat19 * u_xlat56 + u_xlat54;
					    u_xlat13.xyz = glstate_lightmodel_ambient.xyz + glstate_lightmodel_ambient.xyz;
					    u_xlat14.xyz = u_xlat0.xyz * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize));
					    u_xlat15.xy = u_xlat0.xz * vec2(vec2(_GIShadeSize, _GIShadeSize)) + vec2(-0.200000003, -0.200000003);
					    u_xlat15.xy = u_xlat15.xy * vec2(9.99999905, 9.99999905);
					    u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
					    u_xlat51.xy = u_xlat15.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
					    u_xlat15.xy = u_xlat15.xy * u_xlat15.xy;
					    u_xlat15.xy = u_xlat15.xy * u_xlat51.xy;
					    u_xlat15.z = 0.0;
					    u_xlat15.xyz = (-u_xlat0.xyz) * vec3(vec3(_GIShadeSize, _GIShadeSize, _GIShadeSize)) + u_xlat15.xyz;
					    u_xlat14.xyz = vec3(_GIFlatShade) * u_xlat15.xyz + u_xlat14.xyz;
					    u_xlat14.xyz = u_xlat29.xyz * u_xlat14.xyz;
					    u_xlat14.w = 1.0;
					    u_xlat15.x = dot(unity_SHAr, u_xlat14);
					    u_xlat15.y = dot(unity_SHAg, u_xlat14);
					    u_xlat15.z = dot(unity_SHAb, u_xlat14);
					    u_xlat16 = u_xlat14.yzzx * u_xlat14.xyzz;
					    u_xlat17.x = dot(unity_SHBr, u_xlat16);
					    u_xlat17.y = dot(unity_SHBg, u_xlat16);
					    u_xlat17.z = dot(unity_SHBb, u_xlat16);
					    u_xlat19 = u_xlat14.y * u_xlat14.y;
					    u_xlat19 = u_xlat14.x * u_xlat14.x + (-u_xlat19);
					    u_xlat29.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat17.xyz;
					    u_xlat29.xyz = u_xlat29.xyz + u_xlat15.xyz;
					    u_xlat29.xyz = (-glstate_lightmodel_ambient.xyz) * vec3(2.0, 2.0, 2.0) + u_xlat29.xyz;
					    u_xlat29.xyz = vec3(vec3(_UseGILighting, _UseGILighting, _UseGILighting)) * u_xlat29.xyz + u_xlat13.xyz;
					    u_xlat19 = max(u_xlat57, 0.0);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat56 = (-_FresnelFill) + 1.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat19 = log2(u_xlat19);
					    u_xlat19 = u_xlat19 * u_xlat56;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat56 = u_xlat19 + -0.379999995;
					    u_xlat56 = u_xlat56 * 49.9999733;
					    u_xlat56 = clamp(u_xlat56, 0.0, 1.0);
					    u_xlat57 = u_xlat56 * -2.0 + 3.0;
					    u_xlat56 = u_xlat56 * u_xlat56;
					    u_xlat56 = u_xlat57 * u_xlat56 + (-u_xlat19);
					    u_xlat19 = _HardEdgeFresnel * u_xlat56 + u_xlat19;
					    u_xlat13.xyz = vec3(u_xlat19) * _FresnelColor.xyz;
					    u_xlat19 = _FresnelIntensity * 10.0;
					    u_xlat13.xyz = vec3(u_xlat19) * u_xlat13.xyz;
					    u_xlat19 = u_xlat37 * u_xlat59;
					    u_xlat37 = (-u_xlat59) + 1.0;
					    u_xlat14.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat9.xyz);
					    u_xlat14.xyz = vec3(u_xlat37) * u_xlat14.xyz + u_xlat9.xyz;
					    u_xlat15.xyz = (-u_xlat1.xxx) * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat16.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat14.xyz);
					    u_xlat14.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat14.xyz;
					    u_xlat54 = u_xlat54 * 2.0 + 0.0500000007;
					    u_xlat54 = clamp(u_xlat54, 0.0, 1.0);
					    u_xlat14.xyz = (-u_xlat4.xyz) * vec3(u_xlat58) + u_xlat14.xyz;
					    u_xlat12.xyz = vec3(u_xlat54) * u_xlat14.xyz + u_xlat12.xyz;
					    u_xlatb14.xy = notEqual(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceLightPos0.zwzz).xy;
					    u_xlat14.x = (u_xlatb14.x) ? float(0.0) : float(1.0);
					    u_xlat14.y = (u_xlatb14.y) ? float(0.0) : float(1.0);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat58) + (-u_xlat12.xyz);
					    u_xlat4.xyz = u_xlat14.xxx * u_xlat4.xyz + u_xlat12.xyz;
					    u_xlat29.xyz = vec3(_DirectionalLightAffectShadow) * _LightColor0.xyz + u_xlat29.xyz;
					    u_xlat12.xyz = vec3(u_xlat19) * (-u_xlat13.xyz) + u_xlat13.xyz;
					    u_xlat29.xyz = vec3(vec3(_FresnelOnShadowDark, _FresnelOnShadowDark, _FresnelOnShadowDark)) * u_xlat12.xyz + u_xlat29.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat29.xyz;
					    u_xlat29.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat12 = texture(_MaskSelfLit, u_xlat29.xy);
					    u_xlat9.xyz = u_xlat9.xyz * _SelfLitColor.xyz;
					    u_xlat29.xyz = u_xlat5.xyz * _MainColor.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat29.xyz = vec3(vec3(_SelfLitHighContrast, _SelfLitHighContrast, _SelfLitHighContrast)) * u_xlat29.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat29.xyz;
					    u_xlat9.xyz = u_xlat9.xyz * vec3(_SelfLitPower) + (-u_xlat4.xyz);
					    u_xlat9.xyz = u_xlat9.xyz * u_xlat12.xyz;
					    u_xlat4.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat9.xyz + u_xlat4.xyz;
					    u_xlat54 = _DefaultReflectionRoughtness * 10.0;
					    u_xlat3 = textureLod(unity_SpecCube0, u_xlat3.xyz, u_xlat54);
					    u_xlat54 = u_xlat3.w + -1.0;
					    u_xlat54 = unity_SpecCube0_HDR.w * u_xlat54 + 1.0;
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.y;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat54 = u_xlat54 * unity_SpecCube0_HDR.x;
					    u_xlat9.xyz = u_xlat3.xyz * vec3(u_xlat54);
					    u_xlat37 = (-_Saturation) + 1.0;
					    u_xlat29.xyz = vec3(u_xlat54) * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat29.xyz = u_xlat9.xyz * u_xlat29.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = (-vec3(u_xlat54)) * u_xlat3.xyz + u_xlat29.xyz;
					    u_xlat3.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat3.xyz + u_xlat9.xyz;
					    u_xlat3.xyz = (-u_xlat4.xyz) + u_xlat3.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat11.xxx;
					    u_xlat3.xyz = vec3(_ReflectionIntensity) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat4.xyz = (-u_xlat3.xyz) + u_xlat4.xyz;
					    u_xlat3.xyz = vec3(_UseFReflection) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat3.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat4.xyz = (-u_xlat3.xyz) + vec3(u_xlat54);
					    u_xlat3.xyz = vec3(u_xlat37) * u_xlat4.xyz + u_xlat3.xyz;
					    u_xlat54 = dot(u_xlat0.xyz, u_xlat8.xyz);
					    u_xlat54 = max(u_xlat54, 0.0);
					    u_xlat56 = _Glossiness * 17.0 + -2.0;
					    u_xlat56 = exp2(u_xlat56);
					    u_xlat54 = log2(u_xlat54);
					    u_xlat54 = u_xlat54 * u_xlat56;
					    u_xlat54 = exp2(u_xlat54);
					    u_xlat4.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat22.xyz = u_xlat7.xyz * vec3(u_xlat55) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat22.xyz + u_xlat2.xyz;
					    u_xlat55 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat55 = u_xlat55 + u_xlat55;
					    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat55)) + u_xlat2.xyz;
					    u_xlat2.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat2.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat2.xy;
					    u_xlat2.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat2.xy;
					    u_xlat2.xy = (-u_xlat0.xy) + u_xlat2.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat2.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat4.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat4.x;
					    u_xlat4.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat4.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat4.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat54 * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat18.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat36 = u_xlat0.x * u_xlat18.x;
					    u_xlat0.x = (-u_xlat18.x) * u_xlat0.x + u_xlat54;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat36;
					    u_xlat18.x = u_xlat0.x * u_xlat19;
					    u_xlat36 = u_xlat19 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat36 = _ShadowMaskGlossTexture * u_xlat36 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat19) * u_xlat0.x + u_xlat36;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat18.x;
					    u_xlat18.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat18.xy);
					    u_xlatb18.x = 0.0>=_GlossIntensity;
					    u_xlatb18.y = _GlossIntensity>=0.0;
					    u_xlat18.x = u_xlatb18.x ? float(1.0) : 0.0;
					    u_xlat18.y = u_xlatb18.y ? float(1.0) : 0.0;
					;
					    u_xlat4.xyz = vec3(u_xlat59) * u_xlat6.xyz;
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat10.xyz;
					    u_xlat6.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat6.xyz = u_xlat6.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz + (-u_xlat6.xyz);
					    u_xlat5.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat5.xyz + u_xlat6.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat18.y * _GlossIntensity;
					    u_xlat18.x = u_xlat18.y * u_xlat18.x;
					    u_xlat36 = (-u_xlat18.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat18.x * u_xlat36 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat0.xyz;
					    u_xlat2.xyz = u_xlat13.xyz * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat19) * u_xlat2.xyz + u_xlat0.xyz;
					    u_xlat1.xyw = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat54 = dot(u_xlat1.xyw, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat2.x = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat20.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat54);
					    u_xlat1.xyw = u_xlat2.xxx * u_xlat20.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat54 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat54) + (-u_xlat1.xyw);
					    u_xlat0.xyz = u_xlat14.yyy * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xyw = (-u_xlat0.xyz) * u_xlat12.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyw + u_xlat0.xyz;
					    u_xlat1.xyw = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyw);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyw;
					    u_xlat54 = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyw = (-u_xlat0.xyz) + vec3(u_xlat54);
					    u_xlat0.xyz = vec3(u_xlat37) * u_xlat1.xyw + u_xlat0.xyz;
					    SV_Target0.xyz = u_xlat0.xyz + u_xlat3.xyz;
					    SV_Target0.w = 1.0;
					    return;
					}"
				}
			}
		}
		Pass {
			Name "FORWARD_DELTA"
			Tags { "LIGHTMODE" = "FORWARDADD" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
			Blend One One, One One
			Cull Off
			Stencil {
				Comp Disabled
				Pass Keep
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 67740
			Program "vp" {
				SubProgram "d3d11 " {
					Keywords { "POINT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat0.xyz;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat0.xyz;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat2.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat10 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    u_xlat3.xyz = vec3(u_xlat10) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat10 = inversesqrt(u_xlat10);
					    vs_TEXCOORD4.xyz = vec3(u_xlat10) * u_xlat2.xyz;
					    u_xlat10 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat10 = unity_MatrixV[0].z * u_xlat1.x + u_xlat10;
					    u_xlat10 = unity_MatrixV[2].z * u_xlat1.z + u_xlat10;
					    u_xlat10 = unity_MatrixV[3].z * u_xlat1.w + u_xlat10;
					    vs_TEXCOORD5.z = (-u_xlat10);
					    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat0.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat12;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat12 = inversesqrt(u_xlat12);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * vec3(u_xlat12);
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat2.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat0.xyz;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat0.xyz;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    u_xlat3.xy = u_xlat0.yy * unity_WorldToLight[1].xy;
					    u_xlat3.xy = unity_WorldToLight[0].xy * u_xlat0.xx + u_xlat3.xy;
					    u_xlat3.xy = unity_WorldToLight[2].xy * u_xlat0.zz + u_xlat3.xy;
					    vs_TEXCOORD6.xy = unity_WorldToLight[3].xy * u_xlat0.ww + u_xlat3.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    vs_TEXCOORD2.xyz = u_xlat0.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat15 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat3.xyz = vec3(u_xlat15) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat0.zxy * u_xlat3.yzx;
					    u_xlat0.xyz = u_xlat0.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat0.xyz = u_xlat0.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    u_xlat0.x = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat0.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat0.x;
					    u_xlat0.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat0.x;
					    u_xlat0.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat0.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat0.zz + u_xlat0.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					vec4 u_xlat0;
					vec4 u_xlat1;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat7;
					int u_xlati10;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    u_xlat7.xy = u_xlat0.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * u_xlat0.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * u_xlat0.zz + u_xlat7.xy;
					    vs_TEXCOORD6.xy = unity_WorldToLight[3].xy * u_xlat0.ww + u_xlat7.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    vs_TEXCOORD2.xyz = u_xlat0.xyz;
					    u_xlat7.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat7.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat7.xyz;
					    u_xlat15 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat7.xyz = vec3(u_xlat15) * u_xlat7.xyz;
					    vs_TEXCOORD3.xyz = u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.zxy * u_xlat7.yzx;
					    u_xlat0.xyz = u_xlat0.yzx * u_xlat7.zxy + (-u_xlat4.xyz);
					    u_xlat0.xyz = u_xlat0.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    u_xlat0.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat0.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat0.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat0.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat0.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    vs_TEXCOORD5.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_2_2[14];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat1 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD7 = unity_WorldToShadow[3 / 4][3 % 4] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_2_2[14];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat1 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD7 = unity_WorldToShadow[3 / 4][3 % 4] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[7];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_2_2[14];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat1 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD7 = unity_WorldToShadow[3 / 4][3 % 4] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[7];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_2_2[14];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
					    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD6 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat1 = u_xlat0.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat1 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat0.zzzz + u_xlat1;
					    vs_TEXCOORD7 = unity_WorldToShadow[3 / 4][3 % 4] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_2_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat6;
					float u_xlat17;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    gl_Position = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat2.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    vs_TEXCOORD2.xyz = u_xlat2.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat17 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    u_xlat3.xyz = vec3(u_xlat17) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat2.zxy * u_xlat3.yzx;
					    u_xlat2.xyz = u_xlat2.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat2.xyz = u_xlat2.xyz * in_TANGENT0.www;
					    u_xlat17 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat17 = inversesqrt(u_xlat17);
					    vs_TEXCOORD4.xyz = vec3(u_xlat17) * u_xlat2.xyz;
					    u_xlat6 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat6;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat0.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    vs_TEXCOORD5.xyw = u_xlat0.xyw;
					    vs_TEXCOORD6 = u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_2_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_2_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD6;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					int u_xlati10;
					float u_xlat18;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat5.x = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat5.x = inversesqrt(u_xlat5.x);
					    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat5.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat18 = inversesqrt(u_xlat18);
					    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat5.zxy * u_xlat3.yzx;
					    u_xlat5.xyz = u_xlat5.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat5.xyz = u_xlat5.xyz * in_TANGENT0.www;
					    u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat3.x = inversesqrt(u_xlat3.x);
					    vs_TEXCOORD4.xyz = u_xlat5.xyz * u_xlat3.xxx;
					    u_xlat5.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].z;
					    u_xlat5.x = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].z * u_xlat1.x + u_xlat5.x;
					    u_xlat5.x = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].z * u_xlat1.z + u_xlat5.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].z * u_xlat1.w + u_xlat5.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat2.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD6 = u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    u_xlat3.xy = u_xlat0.yy * unity_WorldToLight[1].xy;
					    u_xlat3.xy = unity_WorldToLight[0].xy * u_xlat0.xx + u_xlat3.xy;
					    u_xlat3.xy = unity_WorldToLight[2].xy * u_xlat0.zz + u_xlat3.xy;
					    vs_TEXCOORD6.xy = unity_WorldToLight[3].xy * u_xlat0.ww + u_xlat3.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    vs_TEXCOORD2.xyz = u_xlat0.xyz;
					    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat3.xyz;
					    u_xlat15 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat3.xyz = vec3(u_xlat15) * u_xlat3.xyz;
					    vs_TEXCOORD3.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = u_xlat0.zxy * u_xlat3.yzx;
					    u_xlat0.xyz = u_xlat0.yzx * u_xlat3.zxy + (-u_xlat4.xyz);
					    u_xlat0.xyz = u_xlat0.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    u_xlat0.x = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat0.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat0.x;
					    u_xlat0.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat0.x;
					    u_xlat0.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat0.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    u_xlat2.xy = u_xlat0.zz + u_xlat0.xw;
					    vs_TEXCOORD5.xyw = u_xlat2.xyw;
					    vs_TEXCOORD7 = u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD6;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec4 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat7;
					int u_xlati10;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    u_xlat7.xy = u_xlat0.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * u_xlat0.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * u_xlat0.zz + u_xlat7.xy;
					    vs_TEXCOORD6.xy = unity_WorldToLight[3].xy * u_xlat0.ww + u_xlat7.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    vs_TEXCOORD2.xyz = u_xlat0.xyz;
					    u_xlat7.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat7.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat7.xyz;
					    u_xlat15 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat7.xyz = vec3(u_xlat15) * u_xlat7.xyz;
					    vs_TEXCOORD3.xyz = u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.zxy * u_xlat7.yzx;
					    u_xlat0.xyz = u_xlat0.yzx * u_xlat7.zxy + (-u_xlat4.xyz);
					    u_xlat0.xyz = u_xlat0.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = vec3(u_xlat15) * u_xlat0.xyz;
					    u_xlat0.x = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat0.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat0.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat0.x;
					    u_xlat0.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat0.x;
					    vs_TEXCOORD5.z = (-u_xlat0.x);
					    u_xlat0.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat0.w = u_xlat0.x * 0.5;
					    u_xlat0.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.zz + u_xlat0.xw;
					    u_xlati10 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati10].zw;
					    u_xlat3.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati10].xy + u_xlat1.xy;
					    vs_TEXCOORD5.xyw = u_xlat3.xyw;
					    vs_TEXCOORD7 = u_xlat3;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_4_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					float u_xlat14;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
					    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
					    gl_Position = u_xlat2;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat3.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    vs_TEXCOORD2.xyz = u_xlat3.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat14 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    u_xlat4.xyz = vec3(u_xlat14) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx;
					    u_xlat3.xyz = u_xlat3.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat3.xyz = u_xlat3.xyz * in_TANGENT0.www;
					    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
					    u_xlat14 = inversesqrt(u_xlat14);
					    vs_TEXCOORD4.xyz = vec3(u_xlat14) * u_xlat3.xyz;
					    u_xlat7 = u_xlat1.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat2.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat2.xw * vec2(0.5, 0.5);
					    vs_TEXCOORD5.w = u_xlat2.w;
					    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 unused_0_2[36];
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec4 _ProjectionParams;
						vec4 unused_1_2[3];
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_2_0;
						vec4 _LightPositionRange;
						vec4 unused_2_2[46];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_4_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_4_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TANGENT0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec4 vs_TEXCOORD1;
					out vec3 vs_TEXCOORD2;
					out vec3 vs_TEXCOORD3;
					out vec3 vs_TEXCOORD4;
					out vec4 vs_TEXCOORD5;
					out vec3 vs_TEXCOORD6;
					out vec3 vs_TEXCOORD7;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					int u_xlati2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					float u_xlat7;
					vec3 u_xlat8;
					int u_xlati13;
					float u_xlat15;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlati2 = unity_StereoEyeIndex << 2;
					    u_xlat3 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4];
					    u_xlat3 = unity_StereoMatrixVP[u_xlati2 / 4][u_xlati2 % 4] * u_xlat1.xxxx + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4] * u_xlat1.zzzz + u_xlat3;
					    u_xlat3 = unity_StereoMatrixVP[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4] * u_xlat1.wwww + u_xlat3;
					    gl_Position = u_xlat3;
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD1 = u_xlat0;
					    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat8.x = inversesqrt(u_xlat8.x);
					    u_xlat8.xyz = u_xlat8.xxx * u_xlat4.xyz;
					    vs_TEXCOORD2.xyz = u_xlat8.xyz;
					    u_xlat4.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[0].xyz * in_TANGENT0.xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_ObjectToWorld[2].xyz * in_TANGENT0.zzz + u_xlat4.xyz;
					    u_xlat15 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    u_xlat4.xyz = vec3(u_xlat15) * u_xlat4.xyz;
					    vs_TEXCOORD3.xyz = u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat8.zxy * u_xlat4.yzx;
					    u_xlat8.xyz = u_xlat8.yzx * u_xlat4.zxy + (-u_xlat5.xyz);
					    u_xlat8.xyz = u_xlat8.xyz * in_TANGENT0.www;
					    u_xlat15 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat15 = inversesqrt(u_xlat15);
					    vs_TEXCOORD4.xyz = u_xlat8.xyz * vec3(u_xlat15);
					    u_xlat7 = u_xlat1.y * unity_StereoMatrixV[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].z;
					    u_xlat1.x = unity_StereoMatrixV[u_xlati2 / 4][u_xlati2 % 4].z * u_xlat1.x + u_xlat7;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].z * u_xlat1.z + u_xlat1.x;
					    u_xlat1.x = unity_StereoMatrixV[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].z * u_xlat1.w + u_xlat1.x;
					    vs_TEXCOORD5.z = (-u_xlat1.x);
					    u_xlat1.x = u_xlat3.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat1.x * 0.5;
					    u_xlat1.xz = u_xlat3.xw * vec2(0.5, 0.5);
					    u_xlat1.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati13 = unity_StereoEyeIndex;
					    u_xlat2.xy = u_xlat3.ww * unity_StereoScaleOffset[u_xlati13].zw;
					    vs_TEXCOORD5.xy = u_xlat1.xy * unity_StereoScaleOffset[u_xlati13].xy + u_xlat2.xy;
					    vs_TEXCOORD5.w = u_xlat3.w;
					    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToLight[1].xyz;
					    u_xlat1.xyz = unity_WorldToLight[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_WorldToLight[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
					    vs_TEXCOORD6.xyz = unity_WorldToLight[3].xyz * u_xlat0.www + u_xlat1.xyz;
					    vs_TEXCOORD7.xyz = u_xlat0.xyz + (-_LightPositionRange.xyz);
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					Keywords { "POINT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat17;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat33));
					    u_xlat33 = u_xlat32 * u_xlat7.x;
					    u_xlat17.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat17.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat17.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat17.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.x * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat17.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat17;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat33));
					    u_xlat33 = u_xlat32 * u_xlat7.x;
					    u_xlat17.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat17.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat17.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat17.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.x * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat17.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_22;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_27;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_46[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat7.xyz = (bool(u_xlatb32)) ? u_xlat7.xyz : vs_TEXCOORD1.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat7.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat7.x = max(u_xlat32, u_xlat33);
					        u_xlat7 = texture(unity_ProbeVolumeSH, u_xlat7.xzw);
					    } else {
					        u_xlat7.x = float(1.0);
					        u_xlat7.y = float(1.0);
					        u_xlat7.z = float(1.0);
					        u_xlat7.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat7, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat33 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat34 = u_xlat33 + u_xlat33;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat34)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat34 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat34) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb34 = u_xlat32>=0.00100000005;
					    u_xlat35 = u_xlatb34 ? 1.0 : float(0.0);
					    u_xlat34 = (u_xlatb34) ? -1.0 : -0.0;
					    u_xlat34 = u_xlat32 + u_xlat34;
					    u_xlat34 = _EnableLightFalloff * u_xlat34 + u_xlat35;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat32 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat34;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat33, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat32 = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(u_xlat32);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat34);
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
					    u_xlat5.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat5.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat5.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_22;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_27;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_46[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat7.xyz = (bool(u_xlatb32)) ? u_xlat7.xyz : vs_TEXCOORD1.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat7.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat7.x = max(u_xlat32, u_xlat33);
					        u_xlat7 = texture(unity_ProbeVolumeSH, u_xlat7.xzw);
					    } else {
					        u_xlat7.x = float(1.0);
					        u_xlat7.y = float(1.0);
					        u_xlat7.z = float(1.0);
					        u_xlat7.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat7, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat33 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat34 = u_xlat33 + u_xlat33;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat34)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat34 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat34) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb34 = u_xlat32>=0.00100000005;
					    u_xlat35 = u_xlatb34 ? 1.0 : float(0.0);
					    u_xlat34 = (u_xlatb34) ? -1.0 : -0.0;
					    u_xlat34 = u_xlat32 + u_xlat34;
					    u_xlat34 = _EnableLightFalloff * u_xlat34 + u_xlat35;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat32 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat34;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat33, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat32 = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(u_xlat32);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat34);
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
					    u_xlat5.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat5.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat5.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = 0.0<u_xlat7.z;
					    u_xlat33 = u_xlatb33 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat33 = u_xlat33 * u_xlat8.w;
					    u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat34));
					    u_xlat33 = u_xlat33 * u_xlat7.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = 0.0<u_xlat7.z;
					    u_xlat33 = u_xlatb33 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat33 = u_xlat33 * u_xlat8.w;
					    u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat34));
					    u_xlat33 = u_xlat33 * u_xlat7.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat33));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat33 = u_xlat7.w * u_xlat8.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat33));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat33 = u_xlat7.w * u_xlat8.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xy = vs_TEXCOORD1.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat7.xy;
					    u_xlat7.xy = u_xlat7.xy + unity_WorldToLight[3].xy;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xy);
					    u_xlat33 = u_xlat32 * u_xlat7.w;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.w * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_3_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[64];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_4_2[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					bool u_xlatb32;
					float u_xlat33;
					float u_xlat34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xy = vs_TEXCOORD1.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat7.xy;
					    u_xlat7.xy = u_xlat7.xy + unity_WorldToLight[3].xy;
					    u_xlatb32 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb32){
					        u_xlatb32 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb32)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat32 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat32, u_xlat33);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat32 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xy);
					    u_xlat33 = u_xlat32 * u_xlat7.w;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.w * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_3_2[12];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2DShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8 = vs_TEXCOORD1.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat8 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
					    u_xlat8 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
					    u_xlat8 = u_xlat8 + unity_WorldToShadow[3 / 4][3 % 4];
					    u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
					    vec3 txVec0 = vec3(u_xlat8.xy,u_xlat8.z);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlatb33 = 0.0<u_xlat7.z;
					    u_xlat33 = u_xlatb33 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat33 = u_xlat33 * u_xlat8.w;
					    u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat34));
					    u_xlat33 = u_xlat33 * u_xlat7.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_3_2[12];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2DShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					int u_xlati32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlati32 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati32 / 4][u_xlati32 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati32 + 1) / 4][(u_xlati32 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati32 + 2) / 4][(u_xlati32 + 2) % 4].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8 = vs_TEXCOORD1.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					    u_xlat8 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
					    u_xlat8 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
					    u_xlat8 = u_xlat8 + unity_WorldToShadow[3 / 4][3 % 4];
					    u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
					    vec3 txVec0 = vec3(u_xlat8.xy,u_xlat8.z);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlatb33 = 0.0<u_xlat7.z;
					    u_xlat33 = u_xlatb33 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat33 = u_xlat33 * u_xlat8.w;
					    u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat34));
					    u_xlat33 = u_xlat33 * u_xlat7.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[6];
						vec4 _ShadowMapTexture_TexelSize;
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_4;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_24;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_29;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_48[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_3_2[12];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2DShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec2 u_xlat14;
					bvec2 u_xlatb14;
					float u_xlat15;
					vec3 u_xlat23;
					float u_xlat28;
					vec2 u_xlat29;
					vec2 u_xlat37;
					float u_xlat42;
					float u_xlat43;
					bool u_xlatb43;
					float u_xlat44;
					float u_xlat45;
					bool u_xlatb45;
					float u_xlat46;
					bool u_xlatb46;
					float u_xlat47;
					bool u_xlatb47;
					float u_xlat48;
					bool u_xlatb48;
					float u_xlat49;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat42 = inversesqrt(u_xlat42);
					    u_xlat2.xyz = vec3(u_xlat42) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat43 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat43 = min(u_xlat43, 1.0);
					    u_xlat43 = (-u_xlat43) + 1.0;
					    u_xlat4.z = sqrt(u_xlat43);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat43 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat43);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat43 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat43 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat43 = u_xlat3.w + -1.0;
					    u_xlat43 = _Transparent * u_xlat43 + 0.5;
					    u_xlatb43 = u_xlat43<0.0;
					    if(((int(u_xlatb43) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat43 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat4.xyz = vec3(u_xlat43) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat42) + u_xlat4.xyz;
					    u_xlat43 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat6.xyz = vec3(u_xlat43) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat44 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat45 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat45 = sqrt(u_xlat45);
					    u_xlat45 = (-u_xlat44) + u_xlat45;
					    u_xlat44 = unity_ShadowFadeCenterAndType.w * u_xlat45 + u_xlat44;
					    u_xlat44 = u_xlat44 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
					    u_xlatb45 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb45){
					        u_xlatb46 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb46)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat46 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat47 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat46, u_xlat47);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat46 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
					    u_xlatb47 = u_xlat44<0.99000001;
					    if(u_xlatb47){
					        u_xlat8 = vs_TEXCOORD1.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					        u_xlat8 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
					        u_xlat8 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
					        u_xlat8 = u_xlat8 + unity_WorldToShadow[3 / 4][3 % 4];
					        u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
					        u_xlat9.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
					        u_xlat9.xy = floor(u_xlat9.xy);
					        u_xlat8.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat9.xy);
					        u_xlat10 = u_xlat8.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
					        u_xlat11.xw = u_xlat10.xz * u_xlat10.xz;
					        u_xlat37.xy = u_xlat11.xw * vec2(0.5, 0.5) + (-u_xlat8.xy);
					        u_xlat10.xz = (-u_xlat8.xy) + vec2(1.0, 1.0);
					        u_xlat12.xy = min(u_xlat8.xy, vec2(0.0, 0.0));
					        u_xlat10.xz = (-u_xlat12.xy) * u_xlat12.xy + u_xlat10.xz;
					        u_xlat8.xy = max(u_xlat8.xy, vec2(0.0, 0.0));
					        u_xlat8.xy = (-u_xlat8.xy) * u_xlat8.xy + u_xlat10.yw;
					        u_xlat12.x = u_xlat37.x;
					        u_xlat12.y = u_xlat10.x;
					        u_xlat12.z = u_xlat8.x;
					        u_xlat12.w = u_xlat11.x;
					        u_xlat12 = u_xlat12 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
					        u_xlat11.x = u_xlat37.y;
					        u_xlat11.y = u_xlat10.z;
					        u_xlat11.z = u_xlat8.y;
					        u_xlat10 = u_xlat11 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
					        u_xlat11 = u_xlat12.ywyw + u_xlat12.xzxz;
					        u_xlat13 = u_xlat10.yyww + u_xlat10.xxzz;
					        u_xlat8.xy = u_xlat12.yw / u_xlat11.zw;
					        u_xlat8.xy = u_xlat8.xy + vec2(-1.5, 0.5);
					        u_xlat37.xy = u_xlat10.yw / u_xlat13.yw;
					        u_xlat37.xy = u_xlat37.xy + vec2(-1.5, 0.5);
					        u_xlat10.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.xx;
					        u_xlat10.zw = u_xlat37.xy * _ShadowMapTexture_TexelSize.yy;
					        u_xlat11 = u_xlat11 * u_xlat13;
					        u_xlat12 = u_xlat9.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat10.xzyz;
					        vec3 txVec0 = vec3(u_xlat12.xy,u_xlat8.z);
					        u_xlat47 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        vec3 txVec1 = vec3(u_xlat12.zw,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat48 = u_xlat48 * u_xlat11.y;
					        u_xlat47 = u_xlat11.x * u_xlat47 + u_xlat48;
					        u_xlat9 = u_xlat9.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat10.xwyw;
					        vec3 txVec2 = vec3(u_xlat9.xy,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat47 = u_xlat11.z * u_xlat48 + u_xlat47;
					        vec3 txVec3 = vec3(u_xlat9.zw,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat47 = u_xlat11.w * u_xlat48 + u_xlat47;
					        u_xlat48 = (-_LightShadowData.x) + 1.0;
					        u_xlat47 = u_xlat47 * u_xlat48 + _LightShadowData.x;
					    } else {
					        u_xlat47 = 1.0;
					    }
					    u_xlat44 = u_xlat44 + u_xlat47;
					    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
					    u_xlat46 = min(u_xlat44, u_xlat46);
					    u_xlat44 = (u_xlatb45) ? u_xlat46 : u_xlat44;
					    u_xlatb45 = 0.0<u_xlat7.z;
					    u_xlat45 = u_xlatb45 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat45 = u_xlat45 * u_xlat8.w;
					    u_xlat46 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat46));
					    u_xlat45 = u_xlat45 * u_xlat7.x;
					    u_xlat46 = u_xlat44 * u_xlat45;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat47 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat48 = u_xlat47 + u_xlat47;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat48)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat23.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat23.xyz = u_xlat8.xyz * u_xlat23.xyz + u_xlat7.xyz;
					    u_xlat23.xyz = (-u_xlat8.xyz) + u_xlat23.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat23.xyz + u_xlat8.xyz;
					    u_xlat48 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat48) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb48 = u_xlat46>=0.00100000005;
					    u_xlat49 = u_xlatb48 ? 1.0 : float(0.0);
					    u_xlat48 = (u_xlatb48) ? -1.0 : -0.0;
					    u_xlat44 = u_xlat45 * u_xlat44 + u_xlat48;
					    u_xlat44 = _EnableLightFalloff * u_xlat44 + u_xlat49;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat42) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat42 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat42 = u_xlat42 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat15 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat29.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat42 * u_xlat15 + (-u_xlat1.x);
					    u_xlat15 = float(1.0) / u_xlat29.x;
					    u_xlat1.x = u_xlat15 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat15 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat29.x = u_xlat1.x * u_xlat15;
					    u_xlat1.x = (-u_xlat15) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat29.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat29.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat15 = u_xlat46 * u_xlat42 + (-u_xlat42);
					    u_xlat42 = _LightFalloffAffectShadowT * u_xlat15 + u_xlat42;
					    u_xlat42 = u_xlat42 * _ShadowTLightSize;
					    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
					    u_xlat42 = u_xlat8.x * u_xlat1.x + u_xlat42;
					    u_xlat42 = u_xlat42 * 0.5;
					    u_xlat42 = roundEven(u_xlat42);
					    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
					    u_xlat42 = u_xlat42 + -1.0;
					    u_xlat42 = u_xlat42 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat42 + 1.0;
					    u_xlat42 = _ShowShadowTOnLight * u_xlat42 + 1.0;
					    u_xlat42 = (-u_xlat1.x) + u_xlat42;
					    u_xlat42 = u_xlat29.x * u_xlat42 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat15 = _Glossiness * 17.0 + -2.0;
					    u_xlat15 = exp2(u_xlat15);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat15;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat15 = u_xlat29.x * u_xlat44;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat43) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat29.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat29.x = u_xlat29.x + u_xlat29.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat29.xxx) + u_xlat2.xyz;
					    u_xlat29.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat29.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat29.xy;
					    u_xlat29.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat29.xy;
					    u_xlat29.xy = (-u_xlat0.xy) + u_xlat29.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat29.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat14.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat28 = u_xlat0.x * u_xlat14.x;
					    u_xlat0.x = (-u_xlat14.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat28;
					    u_xlat14.x = u_xlat0.x * u_xlat15;
					    u_xlat28 = u_xlat15 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat28 = _ShadowMaskGlossTexture * u_xlat28 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat15) * u_xlat0.x + u_xlat28;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat14.x;
					    u_xlat14.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat14.xy);
					    u_xlatb14.x = 0.0>=_GlossIntensity;
					    u_xlatb14.y = _GlossIntensity>=0.0;
					    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
					    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat47, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat29.x = (-_FresnelFill) + 1.0;
					    u_xlat29.x = exp2(u_xlat29.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat29.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat29.x = u_xlat1.x + -0.379999995;
					    u_xlat29.x = u_xlat29.x * 49.9999733;
					    u_xlat29.x = clamp(u_xlat29.x, 0.0, 1.0);
					    u_xlat43 = u_xlat29.x * -2.0 + 3.0;
					    u_xlat29.x = u_xlat29.x * u_xlat29.x;
					    u_xlat29.x = u_xlat43 * u_xlat29.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat29.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat44) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat14.y * _GlossIntensity;
					    u_xlat14.x = u_xlat14.y * u_xlat14.x;
					    u_xlat28 = (-u_xlat14.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat14.x * u_xlat28 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat42) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat42 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat43 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat42);
					    u_xlat1.xyz = vec3(u_xlat43) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat42 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb43 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat43 = (u_xlatb43) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat42) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat43) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat42 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat42) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[6];
						vec4 _ShadowMapTexture_TexelSize;
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_4;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_24;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_29;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_48[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[8];
						mat4x4 unity_WorldToShadow[4];
						vec4 unused_3_2[12];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _LightTextureB0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2DShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec4 u_xlat10;
					vec4 u_xlat11;
					vec4 u_xlat12;
					vec4 u_xlat13;
					vec2 u_xlat14;
					bvec2 u_xlatb14;
					float u_xlat15;
					vec3 u_xlat23;
					float u_xlat28;
					vec2 u_xlat29;
					vec2 u_xlat37;
					float u_xlat42;
					int u_xlati42;
					float u_xlat43;
					bool u_xlatb43;
					float u_xlat44;
					int u_xlati44;
					float u_xlat45;
					bool u_xlatb45;
					float u_xlat46;
					bool u_xlatb46;
					float u_xlat47;
					bool u_xlatb47;
					float u_xlat48;
					bool u_xlatb48;
					float u_xlat49;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati42 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati42].xyz;
					    u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat42 = inversesqrt(u_xlat42);
					    u_xlat2.xyz = vec3(u_xlat42) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat43 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat43 = min(u_xlat43, 1.0);
					    u_xlat43 = (-u_xlat43) + 1.0;
					    u_xlat4.z = sqrt(u_xlat43);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat43 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat43);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat43 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat43 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat43 = u_xlat3.w + -1.0;
					    u_xlat43 = _Transparent * u_xlat43 + 0.5;
					    u_xlatb43 = u_xlat43<0.0;
					    if(((int(u_xlatb43) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat43 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat4.xyz = vec3(u_xlat43) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat42) + u_xlat4.xyz;
					    u_xlat43 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat43 = inversesqrt(u_xlat43);
					    u_xlat6.xyz = vec3(u_xlat43) * u_xlat5.xyz;
					    u_xlat7 = vs_TEXCOORD1.yyyy * unity_WorldToLight[1];
					    u_xlat7 = unity_WorldToLight[0] * vs_TEXCOORD1.xxxx + u_xlat7;
					    u_xlat7 = unity_WorldToLight[2] * vs_TEXCOORD1.zzzz + u_xlat7;
					    u_xlat7 = u_xlat7 + unity_WorldToLight[3];
					    u_xlati44 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati44 / 4][u_xlati44 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4].z;
					    u_xlat44 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat45 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat45 = sqrt(u_xlat45);
					    u_xlat45 = (-u_xlat44) + u_xlat45;
					    u_xlat44 = unity_ShadowFadeCenterAndType.w * u_xlat45 + u_xlat44;
					    u_xlat44 = u_xlat44 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
					    u_xlatb45 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb45){
					        u_xlatb46 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb46)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat46 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat47 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat46, u_xlat47);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat46 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
					    u_xlatb47 = u_xlat44<0.99000001;
					    if(u_xlatb47){
					        u_xlat8 = vs_TEXCOORD1.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
					        u_xlat8 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
					        u_xlat8 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
					        u_xlat8 = u_xlat8 + unity_WorldToShadow[3 / 4][3 % 4];
					        u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
					        u_xlat9.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
					        u_xlat9.xy = floor(u_xlat9.xy);
					        u_xlat8.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat9.xy);
					        u_xlat10 = u_xlat8.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
					        u_xlat11.xw = u_xlat10.xz * u_xlat10.xz;
					        u_xlat37.xy = u_xlat11.xw * vec2(0.5, 0.5) + (-u_xlat8.xy);
					        u_xlat10.xz = (-u_xlat8.xy) + vec2(1.0, 1.0);
					        u_xlat12.xy = min(u_xlat8.xy, vec2(0.0, 0.0));
					        u_xlat10.xz = (-u_xlat12.xy) * u_xlat12.xy + u_xlat10.xz;
					        u_xlat8.xy = max(u_xlat8.xy, vec2(0.0, 0.0));
					        u_xlat8.xy = (-u_xlat8.xy) * u_xlat8.xy + u_xlat10.yw;
					        u_xlat12.x = u_xlat37.x;
					        u_xlat12.y = u_xlat10.x;
					        u_xlat12.z = u_xlat8.x;
					        u_xlat12.w = u_xlat11.x;
					        u_xlat12 = u_xlat12 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
					        u_xlat11.x = u_xlat37.y;
					        u_xlat11.y = u_xlat10.z;
					        u_xlat11.z = u_xlat8.y;
					        u_xlat10 = u_xlat11 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
					        u_xlat11 = u_xlat12.ywyw + u_xlat12.xzxz;
					        u_xlat13 = u_xlat10.yyww + u_xlat10.xxzz;
					        u_xlat8.xy = u_xlat12.yw / u_xlat11.zw;
					        u_xlat8.xy = u_xlat8.xy + vec2(-1.5, 0.5);
					        u_xlat37.xy = u_xlat10.yw / u_xlat13.yw;
					        u_xlat37.xy = u_xlat37.xy + vec2(-1.5, 0.5);
					        u_xlat10.xy = u_xlat8.xy * _ShadowMapTexture_TexelSize.xx;
					        u_xlat10.zw = u_xlat37.xy * _ShadowMapTexture_TexelSize.yy;
					        u_xlat11 = u_xlat11 * u_xlat13;
					        u_xlat12 = u_xlat9.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat10.xzyz;
					        vec3 txVec0 = vec3(u_xlat12.xy,u_xlat8.z);
					        u_xlat47 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        vec3 txVec1 = vec3(u_xlat12.zw,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat48 = u_xlat48 * u_xlat11.y;
					        u_xlat47 = u_xlat11.x * u_xlat47 + u_xlat48;
					        u_xlat9 = u_xlat9.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat10.xwyw;
					        vec3 txVec2 = vec3(u_xlat9.xy,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat47 = u_xlat11.z * u_xlat48 + u_xlat47;
					        vec3 txVec3 = vec3(u_xlat9.zw,u_xlat8.z);
					        u_xlat48 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat47 = u_xlat11.w * u_xlat48 + u_xlat47;
					        u_xlat48 = (-_LightShadowData.x) + 1.0;
					        u_xlat47 = u_xlat47 * u_xlat48 + _LightShadowData.x;
					    } else {
					        u_xlat47 = 1.0;
					    }
					    u_xlat44 = u_xlat44 + u_xlat47;
					    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
					    u_xlat46 = min(u_xlat44, u_xlat46);
					    u_xlat44 = (u_xlatb45) ? u_xlat46 : u_xlat44;
					    u_xlatb45 = 0.0<u_xlat7.z;
					    u_xlat45 = u_xlatb45 ? 1.0 : float(0.0);
					    u_xlat8.xy = u_xlat7.xy / u_xlat7.ww;
					    u_xlat8.xy = u_xlat8.xy + vec2(0.5, 0.5);
					    u_xlat8 = texture(_LightTexture0, u_xlat8.xy);
					    u_xlat45 = u_xlat45 * u_xlat8.w;
					    u_xlat46 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTextureB0, vec2(u_xlat46));
					    u_xlat45 = u_xlat45 * u_xlat7.x;
					    u_xlat46 = u_xlat44 * u_xlat45;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat47 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat48 = u_xlat47 + u_xlat47;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat48)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat23.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat23.xyz = u_xlat8.xyz * u_xlat23.xyz + u_xlat7.xyz;
					    u_xlat23.xyz = (-u_xlat8.xyz) + u_xlat23.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat23.xyz + u_xlat8.xyz;
					    u_xlat48 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat48) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb48 = u_xlat46>=0.00100000005;
					    u_xlat49 = u_xlatb48 ? 1.0 : float(0.0);
					    u_xlat48 = (u_xlatb48) ? -1.0 : -0.0;
					    u_xlat44 = u_xlat45 * u_xlat44 + u_xlat48;
					    u_xlat44 = _EnableLightFalloff * u_xlat44 + u_xlat49;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat42) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat42 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat42 = u_xlat42 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat15 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat29.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat42 * u_xlat15 + (-u_xlat1.x);
					    u_xlat15 = float(1.0) / u_xlat29.x;
					    u_xlat1.x = u_xlat15 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat15 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat29.x = u_xlat1.x * u_xlat15;
					    u_xlat1.x = (-u_xlat15) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat29.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat29.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat15 = u_xlat46 * u_xlat42 + (-u_xlat42);
					    u_xlat42 = _LightFalloffAffectShadowT * u_xlat15 + u_xlat42;
					    u_xlat42 = u_xlat42 * _ShadowTLightSize;
					    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
					    u_xlat42 = u_xlat8.x * u_xlat1.x + u_xlat42;
					    u_xlat42 = u_xlat42 * 0.5;
					    u_xlat42 = roundEven(u_xlat42);
					    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
					    u_xlat42 = u_xlat42 + -1.0;
					    u_xlat42 = u_xlat42 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat42 + 1.0;
					    u_xlat42 = _ShowShadowTOnLight * u_xlat42 + 1.0;
					    u_xlat42 = (-u_xlat1.x) + u_xlat42;
					    u_xlat42 = u_xlat29.x * u_xlat42 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat15 = _Glossiness * 17.0 + -2.0;
					    u_xlat15 = exp2(u_xlat15);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat15;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat15 = u_xlat29.x * u_xlat44;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat43) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat29.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat29.x = u_xlat29.x + u_xlat29.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat29.xxx) + u_xlat2.xyz;
					    u_xlat29.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat29.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat29.xy;
					    u_xlat29.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat29.xy;
					    u_xlat29.xy = (-u_xlat0.xy) + u_xlat29.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat29.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat14.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat28 = u_xlat0.x * u_xlat14.x;
					    u_xlat0.x = (-u_xlat14.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat28;
					    u_xlat14.x = u_xlat0.x * u_xlat15;
					    u_xlat28 = u_xlat15 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat28 = _ShadowMaskGlossTexture * u_xlat28 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat15) * u_xlat0.x + u_xlat28;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat14.x;
					    u_xlat14.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat14.xy);
					    u_xlatb14.x = 0.0>=_GlossIntensity;
					    u_xlatb14.y = _GlossIntensity>=0.0;
					    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
					    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat47, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat29.x = (-_FresnelFill) + 1.0;
					    u_xlat29.x = exp2(u_xlat29.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat29.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat29.x = u_xlat1.x + -0.379999995;
					    u_xlat29.x = u_xlat29.x * 49.9999733;
					    u_xlat29.x = clamp(u_xlat29.x, 0.0, 1.0);
					    u_xlat43 = u_xlat29.x * -2.0 + 3.0;
					    u_xlat29.x = u_xlat29.x * u_xlat29.x;
					    u_xlat29.x = u_xlat43 * u_xlat29.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat29.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat44) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat14.y * _GlossIntensity;
					    u_xlat14.x = u_xlat14.y * u_xlat14.x;
					    u_xlat28 = (-u_xlat14.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat14.x * u_xlat28 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat42) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat15) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat42 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat43 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat42);
					    u_xlat1.xyz = vec3(u_xlat43) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat42 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb43 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat43 = (u_xlatb43) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat42) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat43) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat42 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat42) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_22;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_27;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_46[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.x = unity_MatrixV[0].z;
					    u_xlat7.y = unity_MatrixV[1].z;
					    u_xlat7.z = unity_MatrixV[2].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat7.xyz);
					    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat7.xyz = (bool(u_xlatb34)) ? u_xlat7.xyz : vs_TEXCOORD1.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat7.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat7.x = max(u_xlat34, u_xlat35);
					        u_xlat7 = texture(unity_ProbeVolumeSH, u_xlat7.xzw);
					    } else {
					        u_xlat7.x = float(1.0);
					        u_xlat7.y = float(1.0);
					        u_xlat7.z = float(1.0);
					        u_xlat7.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat7, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat7.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat7 = texture(_ShadowMapTexture, u_xlat7.xy);
					    u_xlat32 = u_xlat32 + u_xlat7.x;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat33 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat34 = u_xlat33 + u_xlat33;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat34)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat34 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat34) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb34 = u_xlat32>=0.00100000005;
					    u_xlat35 = u_xlatb34 ? 1.0 : float(0.0);
					    u_xlat34 = (u_xlatb34) ? -1.0 : -0.0;
					    u_xlat34 = u_xlat32 + u_xlat34;
					    u_xlat34 = _EnableLightFalloff * u_xlat34 + u_xlat35;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat32 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat34;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat33, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat32 = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(u_xlat32);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat34);
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
					    u_xlat5.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat5.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat5.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec4 _LightColor0;
						vec4 unused_0_2;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_22;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_27;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_46[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD6;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					int u_xlati32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlati32 = unity_StereoEyeIndex << 2;
					    u_xlat7.x = unity_StereoMatrixV[u_xlati32 / 4][u_xlati32 % 4].z;
					    u_xlat7.y = unity_StereoMatrixV[(u_xlati32 + 1) / 4][(u_xlati32 + 1) % 4].z;
					    u_xlat7.z = unity_StereoMatrixV[(u_xlati32 + 2) / 4][(u_xlati32 + 2) % 4].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat7.xyz);
					    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat7.xyz = (bool(u_xlatb34)) ? u_xlat7.xyz : vs_TEXCOORD1.xyz;
					        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat7.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat7.x = max(u_xlat34, u_xlat35);
					        u_xlat7 = texture(unity_ProbeVolumeSH, u_xlat7.xzw);
					    } else {
					        u_xlat7.x = float(1.0);
					        u_xlat7.y = float(1.0);
					        u_xlat7.z = float(1.0);
					        u_xlat7.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat7, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat7.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
					    u_xlat7 = texture(_ShadowMapTexture, u_xlat7.xy);
					    u_xlat32 = u_xlat32 + u_xlat7.x;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat33 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat34 = u_xlat33 + u_xlat33;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat34)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat34 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat34) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb34 = u_xlat32>=0.00100000005;
					    u_xlat35 = u_xlatb34 ? 1.0 : float(0.0);
					    u_xlat34 = (u_xlatb34) ? -1.0 : -0.0;
					    u_xlat34 = u_xlat32 + u_xlat34;
					    u_xlat34 = _EnableLightFalloff * u_xlat34 + u_xlat35;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat32 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat34;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat2 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat2.x + (-u_xlat2.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat2.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat2 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat33, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat32 = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(u_xlat32);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat34);
					    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
					    u_xlat5.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat5.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat5.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					    u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD7;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					vec2 u_xlat27;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xy = vs_TEXCOORD1.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat7.xy;
					    u_xlat7.xy = u_xlat7.xy + unity_WorldToLight[3].xy;
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat27.xy = vs_TEXCOORD7.xy / vs_TEXCOORD7.ww;
					    u_xlat8 = texture(_ShadowMapTexture, u_xlat27.xy);
					    u_xlat32 = u_xlat32 + u_xlat8.x;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xy);
					    u_xlat33 = u_xlat32 * u_xlat7.w;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.w * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_2_1[45];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_3;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _ShadowMapTexture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					in  vec4 vs_TEXCOORD7;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					vec2 u_xlat27;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					int u_xlati32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xy = vs_TEXCOORD1.yy * unity_WorldToLight[1].xy;
					    u_xlat7.xy = unity_WorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat7.xy;
					    u_xlat7.xy = unity_WorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat7.xy;
					    u_xlat7.xy = u_xlat7.xy + unity_WorldToLight[3].xy;
					    u_xlati32 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati32 / 4][u_xlati32 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati32 + 1) / 4][(u_xlati32 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati32 + 2) / 4][(u_xlati32 + 2) % 4].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat27.xy = vs_TEXCOORD7.xy / vs_TEXCOORD7.ww;
					    u_xlat8 = texture(_ShadowMapTexture, u_xlat27.xy);
					    u_xlat32 = u_xlat32 + u_xlat8.x;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xy);
					    u_xlat33 = u_xlat32 * u_xlat7.w;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.w * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat17;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					    u_xlat35 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					    u_xlat35 = max(abs(u_xlat8.z), u_xlat35);
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.z);
					    u_xlat35 = max(u_xlat35, 9.99999975e-06);
					    u_xlat35 = u_xlat35 * _LightProjectionParams.w;
					    u_xlat35 = _LightProjectionParams.y / u_xlat35;
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.x);
					    u_xlat35 = (-u_xlat35) + 1.0;
					    vec4 txVec0 = vec4(u_xlat8.xyz,u_xlat35);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat33));
					    u_xlat33 = u_xlat32 * u_xlat7.x;
					    u_xlat17.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat17.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat17.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat17.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.x * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat17.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat17;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					int u_xlati32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					bool u_xlatb35;
					float u_xlat36;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlati32 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati32 / 4][u_xlati32 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati32 + 1) / 4][(u_xlati32 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati32 + 2) / 4][(u_xlati32 + 2) % 4].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					    u_xlat35 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					    u_xlat35 = max(abs(u_xlat8.z), u_xlat35);
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.z);
					    u_xlat35 = max(u_xlat35, 9.99999975e-06);
					    u_xlat35 = u_xlat35 * _LightProjectionParams.w;
					    u_xlat35 = _LightProjectionParams.y / u_xlat35;
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.x);
					    u_xlat35 = (-u_xlat35) + 1.0;
					    vec4 txVec0 = vec4(u_xlat8.xyz,u_xlat35);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat33));
					    u_xlat33 = u_xlat32 * u_xlat7.x;
					    u_xlat17.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat34 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat35 = u_xlat34 + u_xlat34;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat35)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat17.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat35 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat35) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat17.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat17.xyz;
					    u_xlatb35 = u_xlat33>=0.00100000005;
					    u_xlat36 = u_xlatb35 ? 1.0 : float(0.0);
					    u_xlat35 = (u_xlatb35) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat7.x * u_xlat32 + u_xlat35;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat36;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat33 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat34, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat17.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec3 u_xlat10;
					vec2 u_xlat11;
					bvec2 u_xlatb11;
					float u_xlat12;
					vec3 u_xlat18;
					vec3 u_xlat20;
					float u_xlat22;
					vec2 u_xlat23;
					float u_xlat33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					bool u_xlatb37;
					float u_xlat38;
					bool u_xlatb38;
					float u_xlat39;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat33 = inversesqrt(u_xlat33);
					    u_xlat2.xyz = vec3(u_xlat33) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat34 = min(u_xlat34, 1.0);
					    u_xlat34 = (-u_xlat34) + 1.0;
					    u_xlat4.z = sqrt(u_xlat34);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat34);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat34 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat34 = u_xlat3.w + -1.0;
					    u_xlat34 = _Transparent * u_xlat34 + 0.5;
					    u_xlatb34 = u_xlat34<0.0;
					    if(((int(u_xlatb34) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat4.xyz = vec3(u_xlat34) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat33) + u_xlat4.xyz;
					    u_xlat34 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat6.xyz = vec3(u_xlat34) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat35 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat36 = sqrt(u_xlat36);
					    u_xlat36 = (-u_xlat35) + u_xlat36;
					    u_xlat35 = unity_ShadowFadeCenterAndType.w * u_xlat36 + u_xlat35;
					    u_xlat35 = u_xlat35 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlatb36 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb36){
					        u_xlatb37 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb37)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat37 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat38 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat37, u_xlat38);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat37 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
					    u_xlatb38 = u_xlat35<0.99000001;
					    if(u_xlatb38){
					        u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					        u_xlat38 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					        u_xlat38 = max(abs(u_xlat8.z), u_xlat38);
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.z);
					        u_xlat38 = max(u_xlat38, 9.99999975e-06);
					        u_xlat38 = u_xlat38 * _LightProjectionParams.w;
					        u_xlat38 = _LightProjectionParams.y / u_xlat38;
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.x);
					        u_xlat38 = (-u_xlat38) + 1.0;
					        u_xlat9.xyz = u_xlat8.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
					        vec4 txVec0 = vec4(u_xlat9.xyz,u_xlat38);
					        u_xlat9.x = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
					        vec4 txVec1 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.y = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
					        vec4 txVec2 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.z = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat8.xyz = u_xlat8.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
					        vec4 txVec3 = vec4(u_xlat8.xyz,u_xlat38);
					        u_xlat9.w = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat38 = dot(u_xlat9, vec4(0.25, 0.25, 0.25, 0.25));
					        u_xlat39 = (-_LightShadowData.x) + 1.0;
					        u_xlat38 = u_xlat38 * u_xlat39 + _LightShadowData.x;
					    } else {
					        u_xlat38 = 1.0;
					    }
					    u_xlat35 = u_xlat35 + u_xlat38;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlat37 = min(u_xlat35, u_xlat37);
					    u_xlat35 = (u_xlatb36) ? u_xlat37 : u_xlat35;
					    u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat36));
					    u_xlat36 = u_xlat35 * u_xlat7.x;
					    u_xlat18.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat37 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat38 = u_xlat37 + u_xlat37;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat38)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat20.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat20.xyz = u_xlat8.xyz * u_xlat20.xyz + u_xlat18.xyz;
					    u_xlat20.xyz = (-u_xlat8.xyz) + u_xlat20.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat20.xyz + u_xlat8.xyz;
					    u_xlat38 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat38) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat18.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat18.xyz;
					    u_xlatb38 = u_xlat36>=0.00100000005;
					    u_xlat39 = u_xlatb38 ? 1.0 : float(0.0);
					    u_xlat38 = (u_xlatb38) ? -1.0 : -0.0;
					    u_xlat35 = u_xlat7.x * u_xlat35 + u_xlat38;
					    u_xlat35 = _EnableLightFalloff * u_xlat35 + u_xlat39;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat33) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat33 = u_xlat33 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat12 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat23.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat33 * u_xlat12 + (-u_xlat1.x);
					    u_xlat12 = float(1.0) / u_xlat23.x;
					    u_xlat1.x = u_xlat12 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat12 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat23.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = (-u_xlat12) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat23.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat23.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat12 = u_xlat36 * u_xlat33 + (-u_xlat33);
					    u_xlat33 = _LightFalloffAffectShadowT * u_xlat12 + u_xlat33;
					    u_xlat33 = u_xlat33 * _ShadowTLightSize;
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat8.x * u_xlat1.x + u_xlat33;
					    u_xlat33 = u_xlat33 * 0.5;
					    u_xlat33 = roundEven(u_xlat33);
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat33 + -1.0;
					    u_xlat33 = u_xlat33 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat33 + 1.0;
					    u_xlat33 = _ShowShadowTOnLight * u_xlat33 + 1.0;
					    u_xlat33 = (-u_xlat1.x) + u_xlat33;
					    u_xlat33 = u_xlat23.x * u_xlat33 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat12 = _Glossiness * 17.0 + -2.0;
					    u_xlat12 = exp2(u_xlat12);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat12 = u_xlat23.x * u_xlat35;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat34) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat23.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat23.x = u_xlat23.x + u_xlat23.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat23.xxx) + u_xlat2.xyz;
					    u_xlat23.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat23.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat23.xy;
					    u_xlat23.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat23.xy;
					    u_xlat23.xy = (-u_xlat0.xy) + u_xlat23.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat23.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat11.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat22 = u_xlat0.x * u_xlat11.x;
					    u_xlat0.x = (-u_xlat11.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat22;
					    u_xlat11.x = u_xlat0.x * u_xlat12;
					    u_xlat22 = u_xlat12 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat22 = _ShadowMaskGlossTexture * u_xlat22 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat12) * u_xlat0.x + u_xlat22;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat11.x;
					    u_xlat11.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat11.xy);
					    u_xlatb11.x = 0.0>=_GlossIntensity;
					    u_xlatb11.y = _GlossIntensity>=0.0;
					    u_xlat11.x = u_xlatb11.x ? float(1.0) : 0.0;
					    u_xlat11.y = u_xlatb11.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat37, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat23.x = (-_FresnelFill) + 1.0;
					    u_xlat23.x = exp2(u_xlat23.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat23.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat23.x = u_xlat1.x + -0.379999995;
					    u_xlat23.x = u_xlat23.x * 49.9999733;
					    u_xlat23.x = clamp(u_xlat23.x, 0.0, 1.0);
					    u_xlat34 = u_xlat23.x * -2.0 + 3.0;
					    u_xlat23.x = u_xlat23.x * u_xlat23.x;
					    u_xlat23.x = u_xlat34 * u_xlat23.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat23.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat35) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat18.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat11.y * _GlossIntensity;
					    u_xlat11.x = u_xlat11.y * u_xlat11.x;
					    u_xlat22 = (-u_xlat11.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat11.x * u_xlat22 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat33) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat33 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat34 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat33);
					    u_xlat1.xyz = vec3(u_xlat34) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat33 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb34 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat34 = (u_xlatb34) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat33) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat34) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat33 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat33) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec4 u_xlat5;
					vec3 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec3 u_xlat10;
					vec2 u_xlat11;
					bvec2 u_xlatb11;
					float u_xlat12;
					vec3 u_xlat18;
					vec3 u_xlat20;
					float u_xlat22;
					vec2 u_xlat23;
					float u_xlat33;
					int u_xlati33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					int u_xlati35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					bool u_xlatb37;
					float u_xlat38;
					bool u_xlatb38;
					float u_xlat39;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati33 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati33].xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat33 = inversesqrt(u_xlat33);
					    u_xlat2.xyz = vec3(u_xlat33) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat34 = min(u_xlat34, 1.0);
					    u_xlat34 = (-u_xlat34) + 1.0;
					    u_xlat4.z = sqrt(u_xlat34);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat34);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat34 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat34 = u_xlat3.w + -1.0;
					    u_xlat34 = _Transparent * u_xlat34 + 0.5;
					    u_xlatb34 = u_xlat34<0.0;
					    if(((int(u_xlatb34) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat4.xyz = vec3(u_xlat34) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat33) + u_xlat4.xyz;
					    u_xlat34 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat6.xyz = vec3(u_xlat34) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlati35 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati35 / 4][u_xlati35 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati35 + 1) / 4][(u_xlati35 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati35 + 2) / 4][(u_xlati35 + 2) % 4].z;
					    u_xlat35 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat36 = sqrt(u_xlat36);
					    u_xlat36 = (-u_xlat35) + u_xlat36;
					    u_xlat35 = unity_ShadowFadeCenterAndType.w * u_xlat36 + u_xlat35;
					    u_xlat35 = u_xlat35 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlatb36 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb36){
					        u_xlatb37 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb37)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat37 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat38 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat37, u_xlat38);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat37 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
					    u_xlatb38 = u_xlat35<0.99000001;
					    if(u_xlatb38){
					        u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					        u_xlat38 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					        u_xlat38 = max(abs(u_xlat8.z), u_xlat38);
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.z);
					        u_xlat38 = max(u_xlat38, 9.99999975e-06);
					        u_xlat38 = u_xlat38 * _LightProjectionParams.w;
					        u_xlat38 = _LightProjectionParams.y / u_xlat38;
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.x);
					        u_xlat38 = (-u_xlat38) + 1.0;
					        u_xlat9.xyz = u_xlat8.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
					        vec4 txVec0 = vec4(u_xlat9.xyz,u_xlat38);
					        u_xlat9.x = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
					        vec4 txVec1 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.y = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
					        vec4 txVec2 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.z = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat8.xyz = u_xlat8.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
					        vec4 txVec3 = vec4(u_xlat8.xyz,u_xlat38);
					        u_xlat9.w = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat38 = dot(u_xlat9, vec4(0.25, 0.25, 0.25, 0.25));
					        u_xlat39 = (-_LightShadowData.x) + 1.0;
					        u_xlat38 = u_xlat38 * u_xlat39 + _LightShadowData.x;
					    } else {
					        u_xlat38 = 1.0;
					    }
					    u_xlat35 = u_xlat35 + u_xlat38;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlat37 = min(u_xlat35, u_xlat37);
					    u_xlat35 = (u_xlatb36) ? u_xlat37 : u_xlat35;
					    u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat7 = texture(_LightTexture0, vec2(u_xlat36));
					    u_xlat36 = u_xlat35 * u_xlat7.x;
					    u_xlat18.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat37 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat38 = u_xlat37 + u_xlat37;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat38)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat20.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat20.xyz = u_xlat8.xyz * u_xlat20.xyz + u_xlat18.xyz;
					    u_xlat20.xyz = (-u_xlat8.xyz) + u_xlat20.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat20.xyz + u_xlat8.xyz;
					    u_xlat38 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat38) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat18.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat18.xyz;
					    u_xlatb38 = u_xlat36>=0.00100000005;
					    u_xlat39 = u_xlatb38 ? 1.0 : float(0.0);
					    u_xlat38 = (u_xlatb38) ? -1.0 : -0.0;
					    u_xlat35 = u_xlat7.x * u_xlat35 + u_xlat38;
					    u_xlat35 = _EnableLightFalloff * u_xlat35 + u_xlat39;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat33) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat33 = u_xlat33 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat12 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat23.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat33 * u_xlat12 + (-u_xlat1.x);
					    u_xlat12 = float(1.0) / u_xlat23.x;
					    u_xlat1.x = u_xlat12 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat12 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat23.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = (-u_xlat12) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat23.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat23.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat12 = u_xlat36 * u_xlat33 + (-u_xlat33);
					    u_xlat33 = _LightFalloffAffectShadowT * u_xlat12 + u_xlat33;
					    u_xlat33 = u_xlat33 * _ShadowTLightSize;
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat8.x * u_xlat1.x + u_xlat33;
					    u_xlat33 = u_xlat33 * 0.5;
					    u_xlat33 = roundEven(u_xlat33);
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat33 + -1.0;
					    u_xlat33 = u_xlat33 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat33 + 1.0;
					    u_xlat33 = _ShowShadowTOnLight * u_xlat33 + 1.0;
					    u_xlat33 = (-u_xlat1.x) + u_xlat33;
					    u_xlat33 = u_xlat23.x * u_xlat33 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat12 = _Glossiness * 17.0 + -2.0;
					    u_xlat12 = exp2(u_xlat12);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat12 = u_xlat23.x * u_xlat35;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat7.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat34) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat23.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat23.x = u_xlat23.x + u_xlat23.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat23.xxx) + u_xlat2.xyz;
					    u_xlat23.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat23.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat23.xy;
					    u_xlat23.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat23.xy;
					    u_xlat23.xy = (-u_xlat0.xy) + u_xlat23.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat23.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat7.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat5 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat11.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat22 = u_xlat0.x * u_xlat11.x;
					    u_xlat0.x = (-u_xlat11.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat22;
					    u_xlat11.x = u_xlat0.x * u_xlat12;
					    u_xlat22 = u_xlat12 * u_xlat5.x + (-u_xlat5.x);
					    u_xlat22 = _ShadowMaskGlossTexture * u_xlat22 + u_xlat5.x;
					    u_xlat0.x = (-u_xlat12) * u_xlat0.x + u_xlat22;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat11.x;
					    u_xlat11.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat5 = texture(_MaskGloss, u_xlat11.xy);
					    u_xlatb11.x = 0.0>=_GlossIntensity;
					    u_xlatb11.y = _GlossIntensity>=0.0;
					    u_xlat11.x = u_xlatb11.x ? float(1.0) : 0.0;
					    u_xlat11.y = u_xlatb11.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat37, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat23.x = (-_FresnelFill) + 1.0;
					    u_xlat23.x = exp2(u_xlat23.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat23.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat23.x = u_xlat1.x + -0.379999995;
					    u_xlat23.x = u_xlat23.x * 49.9999733;
					    u_xlat23.x = clamp(u_xlat23.x, 0.0, 1.0);
					    u_xlat34 = u_xlat23.x * -2.0 + 3.0;
					    u_xlat23.x = u_xlat23.x * u_xlat23.x;
					    u_xlat23.x = u_xlat34 * u_xlat23.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat23.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat35) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat18.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
					    u_xlat0.x = u_xlat11.y * _GlossIntensity;
					    u_xlat11.x = u_xlat11.y * u_xlat11.x;
					    u_xlat22 = (-u_xlat11.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat11.x * u_xlat22 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat33) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat33 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat34 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat33);
					    u_xlat1.xyz = vec3(u_xlat34) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat33 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb34 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat34 = (u_xlatb34) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat33) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat34) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat33 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat33) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					    u_xlat35 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					    u_xlat35 = max(abs(u_xlat8.z), u_xlat35);
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.z);
					    u_xlat35 = max(u_xlat35, 9.99999975e-06);
					    u_xlat35 = u_xlat35 * _LightProjectionParams.w;
					    u_xlat35 = _LightProjectionParams.y / u_xlat35;
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.x);
					    u_xlat35 = (-u_xlat35) + 1.0;
					    vec4 txVec0 = vec4(u_xlat8.xyz,u_xlat35);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat33));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat33 = u_xlat7.w * u_xlat8.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec2 u_xlat10;
					bvec2 u_xlatb10;
					float u_xlat11;
					vec3 u_xlat19;
					float u_xlat20;
					vec2 u_xlat21;
					float u_xlat30;
					int u_xlati30;
					float u_xlat31;
					bool u_xlatb31;
					float u_xlat32;
					int u_xlati32;
					float u_xlat33;
					bool u_xlatb33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati30 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati30].xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat30 = inversesqrt(u_xlat30);
					    u_xlat2.xyz = vec3(u_xlat30) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat31 = min(u_xlat31, 1.0);
					    u_xlat31 = (-u_xlat31) + 1.0;
					    u_xlat4.z = sqrt(u_xlat31);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat31 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat31 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat31 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat31 = u_xlat3.w + -1.0;
					    u_xlat31 = _Transparent * u_xlat31 + 0.5;
					    u_xlatb31 = u_xlat31<0.0;
					    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat4.xyz;
					    u_xlat31 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat31 = inversesqrt(u_xlat31);
					    u_xlat6.xyz = vec3(u_xlat31) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlati32 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati32 / 4][u_xlati32 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati32 + 1) / 4][(u_xlati32 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati32 + 2) / 4][(u_xlati32 + 2) % 4].z;
					    u_xlat32 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat33 = sqrt(u_xlat33);
					    u_xlat33 = (-u_xlat32) + u_xlat33;
					    u_xlat32 = unity_ShadowFadeCenterAndType.w * u_xlat33 + u_xlat32;
					    u_xlat32 = u_xlat32 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlatb33 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb33){
					        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb34)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat34 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat34, u_xlat35);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat34 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					    u_xlat35 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					    u_xlat35 = max(abs(u_xlat8.z), u_xlat35);
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.z);
					    u_xlat35 = max(u_xlat35, 9.99999975e-06);
					    u_xlat35 = u_xlat35 * _LightProjectionParams.w;
					    u_xlat35 = _LightProjectionParams.y / u_xlat35;
					    u_xlat35 = u_xlat35 + (-_LightProjectionParams.x);
					    u_xlat35 = (-u_xlat35) + 1.0;
					    vec4 txVec0 = vec4(u_xlat8.xyz,u_xlat35);
					    u_xlat35 = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					    u_xlat36 = (-_LightShadowData.x) + 1.0;
					    u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
					    u_xlat32 = u_xlat32 + u_xlat35;
					    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
					    u_xlat34 = min(u_xlat32, u_xlat34);
					    u_xlat32 = (u_xlatb33) ? u_xlat34 : u_xlat32;
					    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat33));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat33 = u_xlat7.w * u_xlat8.x;
					    u_xlat34 = u_xlat32 * u_xlat33;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat35 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat36 = u_xlat35 + u_xlat35;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat36)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat19.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat19.xyz = u_xlat8.xyz * u_xlat19.xyz + u_xlat7.xyz;
					    u_xlat19.xyz = (-u_xlat8.xyz) + u_xlat19.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat19.xyz + u_xlat8.xyz;
					    u_xlat36 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat36) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb36 = u_xlat34>=0.00100000005;
					    u_xlat37 = u_xlatb36 ? 1.0 : float(0.0);
					    u_xlat36 = (u_xlatb36) ? -1.0 : -0.0;
					    u_xlat32 = u_xlat33 * u_xlat32 + u_xlat36;
					    u_xlat32 = _EnableLightFalloff * u_xlat32 + u_xlat37;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat30) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat30 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat30 = u_xlat30 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat11 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat21.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat30 * u_xlat11 + (-u_xlat1.x);
					    u_xlat11 = float(1.0) / u_xlat21.x;
					    u_xlat1.x = u_xlat11 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat21.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = (-u_xlat11) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat21.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat21.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat11 = u_xlat34 * u_xlat30 + (-u_xlat30);
					    u_xlat30 = _LightFalloffAffectShadowT * u_xlat11 + u_xlat30;
					    u_xlat30 = u_xlat30 * _ShadowTLightSize;
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat8.x * u_xlat1.x + u_xlat30;
					    u_xlat30 = u_xlat30 * 0.5;
					    u_xlat30 = roundEven(u_xlat30);
					    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
					    u_xlat30 = u_xlat30 + -1.0;
					    u_xlat30 = u_xlat30 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat30 + 1.0;
					    u_xlat30 = _ShowShadowTOnLight * u_xlat30 + 1.0;
					    u_xlat30 = (-u_xlat1.x) + u_xlat30;
					    u_xlat30 = u_xlat21.x * u_xlat30 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat11 = _Glossiness * 17.0 + -2.0;
					    u_xlat11 = exp2(u_xlat11);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat11;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat11 = u_xlat21.x * u_xlat32;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat21.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat21.x = u_xlat21.x + u_xlat21.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat21.xxx) + u_xlat2.xyz;
					    u_xlat21.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat21.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat21.xy;
					    u_xlat21.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat21.xy;
					    u_xlat21.xy = (-u_xlat0.xy) + u_xlat21.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat21.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat10.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat20 = u_xlat0.x * u_xlat10.x;
					    u_xlat0.x = (-u_xlat10.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat20;
					    u_xlat10.x = u_xlat0.x * u_xlat11;
					    u_xlat20 = u_xlat11 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat20 = _ShadowMaskGlossTexture * u_xlat20 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat11) * u_xlat0.x + u_xlat20;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat10.x;
					    u_xlat10.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat10.xy);
					    u_xlatb10.x = 0.0>=_GlossIntensity;
					    u_xlatb10.y = _GlossIntensity>=0.0;
					    u_xlat10.x = u_xlatb10.x ? float(1.0) : 0.0;
					    u_xlat10.y = u_xlatb10.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat35, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat21.x = (-_FresnelFill) + 1.0;
					    u_xlat21.x = exp2(u_xlat21.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat21.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat21.x = u_xlat1.x + -0.379999995;
					    u_xlat21.x = u_xlat21.x * 49.9999733;
					    u_xlat21.x = clamp(u_xlat21.x, 0.0, 1.0);
					    u_xlat31 = u_xlat21.x * -2.0 + 3.0;
					    u_xlat21.x = u_xlat21.x * u_xlat21.x;
					    u_xlat21.x = u_xlat31 * u_xlat21.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat21.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat32) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat10.y * _GlossIntensity;
					    u_xlat10.x = u_xlat10.y * u_xlat10.x;
					    u_xlat20 = (-u_xlat10.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat10.x * u_xlat20 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat30) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat11) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat30 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat31 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat30);
					    u_xlat1.xyz = vec3(u_xlat31) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat30 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb31 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat31 = (u_xlatb31) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat31) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat30 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat30) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 unused_1_4[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_5_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_5_2[10];
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec3 u_xlat10;
					vec2 u_xlat11;
					bvec2 u_xlatb11;
					float u_xlat12;
					vec3 u_xlat20;
					float u_xlat22;
					vec2 u_xlat23;
					float u_xlat33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					bool u_xlatb37;
					float u_xlat38;
					bool u_xlatb38;
					float u_xlat39;
					bool u_xlatb39;
					float u_xlat40;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat33 = inversesqrt(u_xlat33);
					    u_xlat2.xyz = vec3(u_xlat33) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat34 = min(u_xlat34, 1.0);
					    u_xlat34 = (-u_xlat34) + 1.0;
					    u_xlat4.z = sqrt(u_xlat34);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat34);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat34 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat34 = u_xlat3.w + -1.0;
					    u_xlat34 = _Transparent * u_xlat34 + 0.5;
					    u_xlatb34 = u_xlat34<0.0;
					    if(((int(u_xlatb34) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat4.xyz = vec3(u_xlat34) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat33) + u_xlat4.xyz;
					    u_xlat34 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat6.xyz = vec3(u_xlat34) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlat8.x = unity_MatrixV[0].z;
					    u_xlat8.y = unity_MatrixV[1].z;
					    u_xlat8.z = unity_MatrixV[2].z;
					    u_xlat35 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat36 = sqrt(u_xlat36);
					    u_xlat36 = (-u_xlat35) + u_xlat36;
					    u_xlat35 = unity_ShadowFadeCenterAndType.w * u_xlat36 + u_xlat35;
					    u_xlat35 = u_xlat35 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlatb36 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb36){
					        u_xlatb37 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb37)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat37 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat38 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat37, u_xlat38);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat37 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
					    u_xlatb38 = u_xlat35<0.99000001;
					    if(u_xlatb38){
					        u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					        u_xlat38 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					        u_xlat38 = max(abs(u_xlat8.z), u_xlat38);
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.z);
					        u_xlat38 = max(u_xlat38, 9.99999975e-06);
					        u_xlat38 = u_xlat38 * _LightProjectionParams.w;
					        u_xlat38 = _LightProjectionParams.y / u_xlat38;
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.x);
					        u_xlat38 = (-u_xlat38) + 1.0;
					        u_xlat9.xyz = u_xlat8.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
					        vec4 txVec0 = vec4(u_xlat9.xyz,u_xlat38);
					        u_xlat9.x = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
					        vec4 txVec1 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.y = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
					        vec4 txVec2 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.z = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat8.xyz = u_xlat8.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
					        vec4 txVec3 = vec4(u_xlat8.xyz,u_xlat38);
					        u_xlat9.w = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat38 = dot(u_xlat9, vec4(0.25, 0.25, 0.25, 0.25));
					        u_xlat39 = (-_LightShadowData.x) + 1.0;
					        u_xlat38 = u_xlat38 * u_xlat39 + _LightShadowData.x;
					    } else {
					        u_xlat38 = 1.0;
					    }
					    u_xlat35 = u_xlat35 + u_xlat38;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlat37 = min(u_xlat35, u_xlat37);
					    u_xlat35 = (u_xlatb36) ? u_xlat37 : u_xlat35;
					    u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat36));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat36 = u_xlat7.w * u_xlat8.x;
					    u_xlat37 = u_xlat35 * u_xlat36;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat38 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat39 = u_xlat38 + u_xlat38;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat39)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat20.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat20.xyz = u_xlat8.xyz * u_xlat20.xyz + u_xlat7.xyz;
					    u_xlat20.xyz = (-u_xlat8.xyz) + u_xlat20.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat20.xyz + u_xlat8.xyz;
					    u_xlat39 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat39) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb39 = u_xlat37>=0.00100000005;
					    u_xlat40 = u_xlatb39 ? 1.0 : float(0.0);
					    u_xlat39 = (u_xlatb39) ? -1.0 : -0.0;
					    u_xlat35 = u_xlat36 * u_xlat35 + u_xlat39;
					    u_xlat35 = _EnableLightFalloff * u_xlat35 + u_xlat40;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat33) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat33 = u_xlat33 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat12 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat23.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat33 * u_xlat12 + (-u_xlat1.x);
					    u_xlat12 = float(1.0) / u_xlat23.x;
					    u_xlat1.x = u_xlat12 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat12 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat23.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = (-u_xlat12) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat23.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat23.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat12 = u_xlat37 * u_xlat33 + (-u_xlat33);
					    u_xlat33 = _LightFalloffAffectShadowT * u_xlat12 + u_xlat33;
					    u_xlat33 = u_xlat33 * _ShadowTLightSize;
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat8.x * u_xlat1.x + u_xlat33;
					    u_xlat33 = u_xlat33 * 0.5;
					    u_xlat33 = roundEven(u_xlat33);
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat33 + -1.0;
					    u_xlat33 = u_xlat33 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat33 + 1.0;
					    u_xlat33 = _ShowShadowTOnLight * u_xlat33 + 1.0;
					    u_xlat33 = (-u_xlat1.x) + u_xlat33;
					    u_xlat33 = u_xlat23.x * u_xlat33 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat12 = _Glossiness * 17.0 + -2.0;
					    u_xlat12 = exp2(u_xlat12);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat12 = u_xlat23.x * u_xlat35;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat34) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat23.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat23.x = u_xlat23.x + u_xlat23.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat23.xxx) + u_xlat2.xyz;
					    u_xlat23.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat23.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat23.xy;
					    u_xlat23.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat23.xy;
					    u_xlat23.xy = (-u_xlat0.xy) + u_xlat23.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat23.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat11.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat22 = u_xlat0.x * u_xlat11.x;
					    u_xlat0.x = (-u_xlat11.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat22;
					    u_xlat11.x = u_xlat0.x * u_xlat12;
					    u_xlat22 = u_xlat12 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat22 = _ShadowMaskGlossTexture * u_xlat22 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat12) * u_xlat0.x + u_xlat22;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat11.x;
					    u_xlat11.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat11.xy);
					    u_xlatb11.x = 0.0>=_GlossIntensity;
					    u_xlatb11.y = _GlossIntensity>=0.0;
					    u_xlat11.x = u_xlatb11.x ? float(1.0) : 0.0;
					    u_xlat11.y = u_xlatb11.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat38, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat23.x = (-_FresnelFill) + 1.0;
					    u_xlat23.x = exp2(u_xlat23.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat23.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat23.x = u_xlat1.x + -0.379999995;
					    u_xlat23.x = u_xlat23.x * 49.9999733;
					    u_xlat23.x = clamp(u_xlat23.x, 0.0, 1.0);
					    u_xlat34 = u_xlat23.x * -2.0 + 3.0;
					    u_xlat23.x = u_xlat23.x * u_xlat23.x;
					    u_xlat23.x = u_xlat34 * u_xlat23.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat23.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat35) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat11.y * _GlossIntensity;
					    u_xlat11.x = u_xlat11.y * u_xlat11.x;
					    u_xlat22 = (-u_xlat11.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat11.x * u_xlat22 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat33) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat33 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat34 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat33);
					    u_xlat1.xyz = vec3(u_xlat34) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat33 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb34 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat34 = (u_xlatb34) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat33) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat34) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat33 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat33) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						mat4x4 unity_WorldToLight;
						vec4 _LightColor0;
						vec4 unused_0_3;
						vec4 _Texture_ST;
						vec4 _MainColor;
						float _Glossiness;
						vec4 _GlossColor;
						vec4 _NormalMap_ST;
						float _SelfShadowHardness;
						float _NormalIntensity;
						float _Saturation;
						float _SelfShadowIntensity;
						vec4 _MaskSelfLit_ST;
						vec4 _FReflection_ST;
						vec4 _MaskReflection_ST;
						float _ReflectionIntensity;
						vec4 _MaskGloss_ST;
						float _SoftGloss;
						float _SelfLitIntensity;
						float _Transparent;
						float _SelfShadowSize;
						float _GlossIntensity;
						vec4 unused_0_23;
						float _FresnelFill;
						vec4 _FresnelColor;
						float _FresnelIntensity;
						float _HardEdgeFresnel;
						vec4 unused_0_28;
						float _SelfShadowatViewDirection;
						vec4 _ShadowTTexture_ST;
						float _ShadowTIntensity;
						float _ShowShadowTOnLight;
						float _FresnelOnLight;
						vec4 _GlossTexture_ST;
						float _GlossTextureIntensity;
						float _ShadowMaskGlossTexture;
						float _MainTextureColorGloss;
						float _TexturePatternStyle;
						float _ShowShadowTOnSelfShadow;
						float _ShadowTShadowSize;
						float _ShadowTLightSize;
						float _GlossTextureFollowLight;
						float _EnableLightFalloff;
						vec4 _SelfShadowColor;
						float _UseFReflection;
						float _ReflectionBlendToMainTexture;
						vec4 unused_0_47[4];
						float _GlossTextureFollowObjectRotation;
						float _GlossTextureRotate;
						float _AdjustLightPointSpotlight;
						float _AdjustLightDirectionalLight;
						float _SaturationPointSpotlight;
						float _LightFalloffAffectShadowT;
						float _DirectionalLightAffectShadow;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 _LightPositionRange;
						vec4 _LightProjectionParams;
						vec4 unused_2_3[43];
						vec4 unity_OcclusionMaskSelector;
						vec4 unused_2_5;
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_3_0[24];
						vec4 _LightShadowData;
						vec4 unity_ShadowFadeCenterAndType;
					};
					layout(std140) uniform UnityPerDraw {
						vec4 unused_4_0[4];
						mat4x4 unity_WorldToObject;
						vec4 unused_4_2[2];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_5_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_5_2[52];
						vec3 unity_StereoWorldSpaceCameraPos[2];
						vec4 unused_5_4[3];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityProbeVolume {
						vec4 unity_ProbeVolumeParams;
						mat4x4 unity_ProbeVolumeWorldToObject;
						vec3 unity_ProbeVolumeSizeInv;
						vec3 unity_ProbeVolumeMin;
					};
					uniform  sampler2D _NormalMap;
					uniform  sampler2D _Texture;
					uniform  sampler2D _LightTextureB0;
					uniform  samplerCube _LightTexture0;
					uniform  sampler2D _FReflection;
					uniform  sampler2D _MaskReflection;
					uniform  sampler2D _ShadowTTexture;
					uniform  sampler2D _GlossTexture;
					uniform  sampler2D _MaskGloss;
					uniform  sampler2D _MaskSelfLit;
					uniform  sampler3D unity_ProbeVolumeSH;
					uniform  samplerCube _ShadowMapTexture;
					uniform  samplerCubeShadow hlslcc_zcmp_ShadowMapTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec4 vs_TEXCOORD1;
					in  vec3 vs_TEXCOORD2;
					in  vec3 vs_TEXCOORD3;
					in  vec3 vs_TEXCOORD4;
					in  vec4 vs_TEXCOORD5;
					layout(location = 0) out vec4 SV_Target0;
					vec3 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec4 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec4 u_xlat6;
					vec4 u_xlat7;
					vec4 u_xlat8;
					vec4 u_xlat9;
					vec3 u_xlat10;
					vec2 u_xlat11;
					bvec2 u_xlatb11;
					float u_xlat12;
					vec3 u_xlat20;
					float u_xlat22;
					vec2 u_xlat23;
					float u_xlat33;
					int u_xlati33;
					float u_xlat34;
					bool u_xlatb34;
					float u_xlat35;
					int u_xlati35;
					float u_xlat36;
					bool u_xlatb36;
					float u_xlat37;
					bool u_xlatb37;
					float u_xlat38;
					bool u_xlatb38;
					float u_xlat39;
					bool u_xlatb39;
					float u_xlat40;
					void main()
					{
					    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
					    u_xlat0.x = inversesqrt(u_xlat0.x);
					    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
					    u_xlati33 = unity_StereoEyeIndex;
					    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + unity_StereoWorldSpaceCameraPos[u_xlati33].xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat33 = inversesqrt(u_xlat33);
					    u_xlat2.xyz = vec3(u_xlat33) * u_xlat1.xyz;
					    u_xlat3.xy = vs_TEXCOORD0.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					    u_xlat3 = texture(_NormalMap, u_xlat3.xy);
					    u_xlat3.x = u_xlat3.w * u_xlat3.x;
					    u_xlat4.xy = u_xlat3.xy + u_xlat3.xy;
					    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = dot(u_xlat3.xy, u_xlat3.xy);
					    u_xlat34 = min(u_xlat34, 1.0);
					    u_xlat34 = (-u_xlat34) + 1.0;
					    u_xlat4.z = sqrt(u_xlat34);
					    u_xlat3.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
					    u_xlat3.xyz = vec3(vec3(_NormalIntensity, _NormalIntensity, _NormalIntensity)) * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
					    u_xlat4.xyz = u_xlat3.yyy * vs_TEXCOORD4.xyz;
					    u_xlat3.xyw = u_xlat3.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat3.zzz * u_xlat0.xyz + u_xlat3.xyw;
					    u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat34);
					    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
					    u_xlat3.yz = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat34 = _ScreenParams.x / _ScreenParams.y;
					    u_xlat3.x = u_xlat34 * u_xlat3.y;
					    u_xlat3.xy = u_xlat3.xz + (-vs_TEXCOORD0.xy);
					    u_xlat3.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat3.xy + vs_TEXCOORD0.xy;
					    u_xlat3.xy = u_xlat3.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat3 = texture(_Texture, u_xlat3.xy);
					    u_xlat34 = u_xlat3.w + -1.0;
					    u_xlat34 = _Transparent * u_xlat34 + 0.5;
					    u_xlatb34 = u_xlat34<0.0;
					    if(((int(u_xlatb34) * int(0xffffffffu)))!=0){discard;}
					    u_xlat4.xyz = _WorldSpaceLightPos0.www * (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
					    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat4.xyz = vec3(u_xlat34) * u_xlat4.xyz;
					    u_xlat5.xyz = u_xlat1.xyz * vec3(u_xlat33) + u_xlat4.xyz;
					    u_xlat34 = dot(u_xlat5.xyz, u_xlat5.xyz);
					    u_xlat34 = inversesqrt(u_xlat34);
					    u_xlat6.xyz = vec3(u_xlat34) * u_xlat5.xyz;
					    u_xlat7.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
					    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
					    u_xlati35 = unity_StereoEyeIndex << 2;
					    u_xlat8.x = unity_StereoMatrixV[u_xlati35 / 4][u_xlati35 % 4].z;
					    u_xlat8.y = unity_StereoMatrixV[(u_xlati35 + 1) / 4][(u_xlati35 + 1) % 4].z;
					    u_xlat8.z = unity_StereoMatrixV[(u_xlati35 + 2) / 4][(u_xlati35 + 2) % 4].z;
					    u_xlat35 = dot(u_xlat1.xyz, u_xlat8.xyz);
					    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
					    u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
					    u_xlat36 = sqrt(u_xlat36);
					    u_xlat36 = (-u_xlat35) + u_xlat36;
					    u_xlat35 = unity_ShadowFadeCenterAndType.w * u_xlat36 + u_xlat35;
					    u_xlat35 = u_xlat35 * _LightShadowData.z + _LightShadowData.w;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlatb36 = unity_ProbeVolumeParams.x==1.0;
					    if(u_xlatb36){
					        u_xlatb37 = unity_ProbeVolumeParams.y==1.0;
					        u_xlat8.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat8.xyz;
					        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat8.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
					        u_xlat8.xyz = (bool(u_xlatb37)) ? u_xlat8.xyz : vs_TEXCOORD1.xyz;
					        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
					        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
					        u_xlat37 = u_xlat8.y * 0.25 + 0.75;
					        u_xlat38 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
					        u_xlat8.x = max(u_xlat37, u_xlat38);
					        u_xlat8 = texture(unity_ProbeVolumeSH, u_xlat8.xzw);
					    } else {
					        u_xlat8.x = float(1.0);
					        u_xlat8.y = float(1.0);
					        u_xlat8.z = float(1.0);
					        u_xlat8.w = float(1.0);
					    }
					    u_xlat37 = dot(u_xlat8, unity_OcclusionMaskSelector);
					    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
					    u_xlatb38 = u_xlat35<0.99000001;
					    if(u_xlatb38){
					        u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
					        u_xlat38 = max(abs(u_xlat8.y), abs(u_xlat8.x));
					        u_xlat38 = max(abs(u_xlat8.z), u_xlat38);
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.z);
					        u_xlat38 = max(u_xlat38, 9.99999975e-06);
					        u_xlat38 = u_xlat38 * _LightProjectionParams.w;
					        u_xlat38 = _LightProjectionParams.y / u_xlat38;
					        u_xlat38 = u_xlat38 + (-_LightProjectionParams.x);
					        u_xlat38 = (-u_xlat38) + 1.0;
					        u_xlat9.xyz = u_xlat8.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
					        vec4 txVec0 = vec4(u_xlat9.xyz,u_xlat38);
					        u_xlat9.x = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec0, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
					        vec4 txVec1 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.y = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec1, 0.0);
					        u_xlat10.xyz = u_xlat8.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
					        vec4 txVec2 = vec4(u_xlat10.xyz,u_xlat38);
					        u_xlat9.z = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec2, 0.0);
					        u_xlat8.xyz = u_xlat8.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
					        vec4 txVec3 = vec4(u_xlat8.xyz,u_xlat38);
					        u_xlat9.w = textureLod(hlslcc_zcmp_ShadowMapTexture, txVec3, 0.0);
					        u_xlat38 = dot(u_xlat9, vec4(0.25, 0.25, 0.25, 0.25));
					        u_xlat39 = (-_LightShadowData.x) + 1.0;
					        u_xlat38 = u_xlat38 * u_xlat39 + _LightShadowData.x;
					    } else {
					        u_xlat38 = 1.0;
					    }
					    u_xlat35 = u_xlat35 + u_xlat38;
					    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
					    u_xlat37 = min(u_xlat35, u_xlat37);
					    u_xlat35 = (u_xlatb36) ? u_xlat37 : u_xlat35;
					    u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat8 = texture(_LightTextureB0, vec2(u_xlat36));
					    u_xlat7 = texture(_LightTexture0, u_xlat7.xyz);
					    u_xlat36 = u_xlat7.w * u_xlat8.x;
					    u_xlat37 = u_xlat35 * u_xlat36;
					    u_xlat7.xyz = u_xlat3.xyz * _MainColor.xyz;
					    u_xlat38 = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat39 = u_xlat38 + u_xlat38;
					    u_xlat8.xy = u_xlat0.xy * (-vec2(u_xlat39)) + u_xlat2.xy;
					    u_xlat8.xy = u_xlat8.xy * vec2(-0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat8.xy = (-u_xlat8.xy) + vec2(1.0, 1.0);
					    u_xlat8.xy = u_xlat8.xy * _FReflection_ST.xy + _FReflection_ST.zw;
					    u_xlat8 = texture(_FReflection, u_xlat8.xy);
					    u_xlat9.xy = vs_TEXCOORD0.xy * _MaskReflection_ST.xy + _MaskReflection_ST.zw;
					    u_xlat9 = texture(_MaskReflection, u_xlat9.xy);
					    u_xlat20.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat20.xyz = u_xlat8.xyz * u_xlat20.xyz + u_xlat7.xyz;
					    u_xlat20.xyz = (-u_xlat8.xyz) + u_xlat20.xyz;
					    u_xlat8.xyz = vec3(vec3(_ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture, _ReflectionBlendToMainTexture)) * u_xlat20.xyz + u_xlat8.xyz;
					    u_xlat39 = (-u_xlat9.x) + 1.0;
					    u_xlat9.xyz = u_xlat3.xyz * _MainColor.xyz + (-u_xlat8.xyz);
					    u_xlat8.xyz = vec3(u_xlat39) * u_xlat9.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = (-u_xlat3.xyz) * _MainColor.xyz + u_xlat8.xyz;
					    u_xlat8.xyz = u_xlat8.xyz * vec3(_ReflectionIntensity);
					    u_xlat7.xyz = vec3(_UseFReflection) * u_xlat8.xyz + u_xlat7.xyz;
					    u_xlatb39 = u_xlat37>=0.00100000005;
					    u_xlat40 = u_xlatb39 ? 1.0 : float(0.0);
					    u_xlat39 = (u_xlatb39) ? -1.0 : -0.0;
					    u_xlat35 = u_xlat36 * u_xlat35 + u_xlat39;
					    u_xlat35 = _EnableLightFalloff * u_xlat35 + u_xlat40;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat33) + (-u_xlat4.xyz);
					    u_xlat1.xyz = vec3(vec3(_SelfShadowatViewDirection, _SelfShadowatViewDirection, _SelfShadowatViewDirection)) * u_xlat1.xyz + u_xlat4.xyz;
					    u_xlat33 = dot(u_xlat1.xyz, u_xlat0.xyz);
					    u_xlat33 = u_xlat33 * 0.5 + 0.5;
					    u_xlat1.x = _SelfShadowHardness * 0.598999977 + 0.300000012;
					    u_xlat12 = _SelfShadowSize * -2.00999999 + 2.79999995;
					    u_xlat23.x = (-u_xlat1.x) + 0.899999976;
					    u_xlat1.x = u_xlat33 * u_xlat12 + (-u_xlat1.x);
					    u_xlat12 = float(1.0) / u_xlat23.x;
					    u_xlat1.x = u_xlat12 * u_xlat1.x;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat12 = u_xlat1.x * -2.0 + 3.0;
					    u_xlat1.x = u_xlat1.x * u_xlat1.x;
					    u_xlat23.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = (-u_xlat12) * u_xlat1.x + 1.0;
					    u_xlat4.xyz = u_xlat1.xxx * _SelfShadowColor.xyz + (-u_xlat23.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(0.649999976, 0.649999976, 0.649999976) + u_xlat23.xxx;
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.8599999, 2.8599999, 2.8599999) + vec3(-1.0, -1.0, -1.0);
					    u_xlat4.xyz = vec3(vec3(_SelfShadowIntensity, _SelfShadowIntensity, _SelfShadowIntensity)) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
					    u_xlat1.xy = vs_TEXCOORD0.xy * _ShadowTTexture_ST.xy + _ShadowTTexture_ST.zw;
					    u_xlat8 = texture(_ShadowTTexture, u_xlat1.xy);
					    u_xlat1.x = (-_ShadowTShadowSize) + 1.0;
					    u_xlat12 = u_xlat37 * u_xlat33 + (-u_xlat33);
					    u_xlat33 = _LightFalloffAffectShadowT * u_xlat12 + u_xlat33;
					    u_xlat33 = u_xlat33 * _ShadowTLightSize;
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat8.x * u_xlat1.x + u_xlat33;
					    u_xlat33 = u_xlat33 * 0.5;
					    u_xlat33 = roundEven(u_xlat33);
					    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
					    u_xlat33 = u_xlat33 + -1.0;
					    u_xlat33 = u_xlat33 * _ShadowTIntensity;
					    u_xlat1.x = _ShowShadowTOnSelfShadow * u_xlat33 + 1.0;
					    u_xlat33 = _ShowShadowTOnLight * u_xlat33 + 1.0;
					    u_xlat33 = (-u_xlat1.x) + u_xlat33;
					    u_xlat33 = u_xlat23.x * u_xlat33 + u_xlat1.x;
					    u_xlat1.x = dot(u_xlat0.xyz, u_xlat6.xyz);
					    u_xlat1.x = max(u_xlat1.x, 0.0);
					    u_xlat12 = _Glossiness * 17.0 + -2.0;
					    u_xlat12 = exp2(u_xlat12);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat12;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat12 = u_xlat23.x * u_xlat35;
					    u_xlat6.x = sin(_GlossTextureRotate);
					    u_xlat8.x = cos(_GlossTextureRotate);
					    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat34) + (-u_xlat2.xyz);
					    u_xlat2.xyz = vec3(vec3(_GlossTextureFollowLight, _GlossTextureFollowLight, _GlossTextureFollowLight)) * u_xlat5.xyz + u_xlat2.xyz;
					    u_xlat23.x = dot(u_xlat2.xyz, u_xlat0.xyz);
					    u_xlat23.x = u_xlat23.x + u_xlat23.x;
					    u_xlat0.xyz = u_xlat0.xyz * (-u_xlat23.xxx) + u_xlat2.xyz;
					    u_xlat23.xy = u_xlat0.yy * unity_WorldToObject[1].xy;
					    u_xlat23.xy = unity_WorldToObject[0].xy * u_xlat0.xx + u_xlat23.xy;
					    u_xlat23.xy = unity_WorldToObject[2].xy * u_xlat0.zz + u_xlat23.xy;
					    u_xlat23.xy = (-u_xlat0.xy) + u_xlat23.xy;
					    u_xlat0.xy = vec2(_GlossTextureFollowObjectRotation) * u_xlat23.xy + u_xlat0.xy;
					    u_xlat0.z = (-u_xlat0.x);
					    u_xlat0.xy = u_xlat0.zy + vec2(-0.5, -0.5);
					    u_xlat2.x = (-u_xlat6.x);
					    u_xlat2.y = u_xlat8.x;
					    u_xlat2.z = u_xlat6.x;
					    u_xlat5.x = dot(u_xlat0.xy, u_xlat2.yz);
					    u_xlat5.y = dot(u_xlat0.xy, u_xlat2.xy);
					    u_xlat0.xy = u_xlat5.xy + vec2(0.5, 0.5);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
					    u_xlat0.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * _GlossTexture_ST.xy + _GlossTexture_ST.zw;
					    u_xlat6 = texture(_GlossTexture, u_xlat0.xy);
					    u_xlat0.x = u_xlat1.x * 3.0 + -0.790000021;
					    u_xlat0.x = u_xlat0.x * 9.09091282;
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					    u_xlat11.x = u_xlat0.x * -2.0 + 3.0;
					    u_xlat0.x = u_xlat0.x * u_xlat0.x;
					    u_xlat22 = u_xlat0.x * u_xlat11.x;
					    u_xlat0.x = (-u_xlat11.x) * u_xlat0.x + u_xlat1.x;
					    u_xlat0.x = _SoftGloss * u_xlat0.x + u_xlat22;
					    u_xlat11.x = u_xlat0.x * u_xlat12;
					    u_xlat22 = u_xlat12 * u_xlat6.x + (-u_xlat6.x);
					    u_xlat22 = _ShadowMaskGlossTexture * u_xlat22 + u_xlat6.x;
					    u_xlat0.x = (-u_xlat12) * u_xlat0.x + u_xlat22;
					    u_xlat0.x = _GlossTextureIntensity * u_xlat0.x + u_xlat11.x;
					    u_xlat11.xy = vs_TEXCOORD0.xy * _MaskGloss_ST.xy + _MaskGloss_ST.zw;
					    u_xlat6 = texture(_MaskGloss, u_xlat11.xy);
					    u_xlatb11.x = 0.0>=_GlossIntensity;
					    u_xlatb11.y = _GlossIntensity>=0.0;
					    u_xlat11.x = u_xlatb11.x ? float(1.0) : 0.0;
					    u_xlat11.y = u_xlatb11.y ? float(1.0) : 0.0;
					;
					    u_xlat1.x = max(u_xlat38, 0.0);
					    u_xlat1.x = (-u_xlat1.x) + 1.0;
					    u_xlat23.x = (-_FresnelFill) + 1.0;
					    u_xlat23.x = exp2(u_xlat23.x);
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * u_xlat23.x;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat23.x = u_xlat1.x + -0.379999995;
					    u_xlat23.x = u_xlat23.x * 49.9999733;
					    u_xlat23.x = clamp(u_xlat23.x, 0.0, 1.0);
					    u_xlat34 = u_xlat23.x * -2.0 + 3.0;
					    u_xlat23.x = u_xlat23.x * u_xlat23.x;
					    u_xlat23.x = u_xlat34 * u_xlat23.x + (-u_xlat1.x);
					    u_xlat1.x = _HardEdgeFresnel * u_xlat23.x + u_xlat1.x;
					    u_xlat1.xzw = u_xlat1.xxx * _FresnelColor.xyz;
					    u_xlat2.x = _FresnelIntensity * 10.0;
					    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xxx;
					    u_xlat2.xyz = vec3(u_xlat35) * u_xlat4.xyz;
					    u_xlat2.xyz = u_xlat2.xyz * u_xlat7.xyz;
					    u_xlat4.xyz = u_xlat0.xxx * _GlossColor.xyz + (-u_xlat0.xxx);
					    u_xlat4.xyz = u_xlat4.xyz * vec3(2.22000003, 2.22000003, 2.22000003) + u_xlat0.xxx;
					    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz + (-u_xlat4.xyz);
					    u_xlat3.xyz = vec3(vec3(_MainTextureColorGloss, _MainTextureColorGloss, _MainTextureColorGloss)) * u_xlat3.xyz + u_xlat4.xyz;
					    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
					    u_xlat0.x = u_xlat11.y * _GlossIntensity;
					    u_xlat11.x = u_xlat11.y * u_xlat11.x;
					    u_xlat22 = (-u_xlat11.y) * _GlossIntensity + _GlossIntensity;
					    u_xlat0.x = u_xlat11.x * u_xlat22 + u_xlat0.x;
					    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat33) + u_xlat0.xyz;
					    u_xlat1.xzw = u_xlat1.xzw * vec3(vec3(_FresnelOnLight, _FresnelOnLight, _FresnelOnLight));
					    u_xlat0.xyz = vec3(u_xlat12) * u_xlat1.xzw + u_xlat0.xyz;
					    u_xlat1.xyz = u_xlat0.xyz * vec3(_AdjustLightPointSpotlight);
					    u_xlat33 = dot(u_xlat1.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat34 = (-_SaturationPointSpotlight) + 1.0;
					    u_xlat2.xyz = (-u_xlat0.xyz) * vec3(_AdjustLightPointSpotlight) + vec3(u_xlat33);
					    u_xlat1.xyz = vec3(u_xlat34) * u_xlat2.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_AdjustLightDirectionalLight, _AdjustLightDirectionalLight, _AdjustLightDirectionalLight));
					    u_xlat33 = _DirectionalLightAffectShadow * -0.699999988 + 1.0;
					    u_xlatb34 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_WorldSpaceLightPos0.w);
					    u_xlat34 = (u_xlatb34) ? 0.0 : 1.0;
					    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat33) + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(u_xlat34) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * _LightColor0.xyz;
					    u_xlat1.xy = vs_TEXCOORD0.xy * _MaskSelfLit_ST.xy + _MaskSelfLit_ST.zw;
					    u_xlat1 = texture(_MaskSelfLit, u_xlat1.xy);
					    u_xlat1.xyz = (-u_xlat0.xyz) * u_xlat1.xyz;
					    u_xlat0.xyz = vec3(vec3(_SelfLitIntensity, _SelfLitIntensity, _SelfLitIntensity)) * u_xlat1.xyz + u_xlat0.xyz;
					    u_xlat33 = (-_Saturation) + 1.0;
					    u_xlat1.xyz = vec3(_ReflectionIntensity) * (-u_xlat0.xyz) + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
					    u_xlat0.xyz = vec3(_UseFReflection) * u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.300000012, 0.589999974, 0.109999999));
					    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xxx;
					    SV_Target0.xyz = vec3(u_xlat33) * u_xlat1.xyz + u_xlat0.xyz;
					    SV_Target0.w = 0.0;
					    return;
					}"
				}
			}
		}
		Pass {
			Name "SHADOWCASTER"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
			Cull Off
			Offset 1, 1
			GpuProgramID 163075
			Program "vp" {
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_1_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_1_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat2;
					float u_xlat7;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat2 = unity_LightShadowBias.x / u_xlat1.w;
					    u_xlat2 = min(u_xlat2, 0.0);
					    u_xlat2 = max(u_xlat2, -1.0);
					    u_xlat7 = u_xlat1.z + u_xlat2;
					    u_xlat2 = min(u_xlat1.w, u_xlat7);
					    gl_Position.xyw = u_xlat1.xyw;
					    u_xlat1.x = (-u_xlat7) + u_xlat2;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat7;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy;
					    u_xlat1.x = u_xlat0.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat0.x + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat0.w + u_xlat1.x;
					    vs_TEXCOORD2.z = (-u_xlat1.x);
					    u_xlat1.xyz = u_xlat0.yyy * unity_MatrixVP[1].xyw;
					    u_xlat1.xyz = unity_MatrixVP[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_MatrixVP[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
					    u_xlat0.xyz = unity_MatrixVP[3].xyw * u_xlat0.www + u_xlat0.xyz;
					    u_xlat1.xz = u_xlat0.xz * vec2(0.5, 0.5);
					    u_xlat0.x = u_xlat0.y * _ProjectionParams.x;
					    vs_TEXCOORD2.w = u_xlat0.z;
					    u_xlat1.w = u_xlat0.x * 0.5;
					    vs_TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_1_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_1_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					vec4 u_xlat1;
					int u_xlati1;
					vec4 u_xlat2;
					vec3 u_xlat4;
					float u_xlat7;
					int u_xlati9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlati1 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat0.yyyy * unity_StereoMatrixVP[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati1 / 4][u_xlati1 % 4] * u_xlat0.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4] * u_xlat0.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4] * u_xlat0.wwww + u_xlat2;
					    u_xlat4.x = unity_LightShadowBias.x / u_xlat2.w;
					    u_xlat4.x = min(u_xlat4.x, 0.0);
					    u_xlat4.x = max(u_xlat4.x, -1.0);
					    u_xlat4.x = u_xlat4.x + u_xlat2.z;
					    u_xlat7 = min(u_xlat2.w, u_xlat4.x);
					    gl_Position.xyw = u_xlat2.xyw;
					    u_xlat7 = (-u_xlat4.x) + u_xlat7;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat7 + u_xlat4.x;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy;
					    u_xlat4.x = u_xlat0.y * unity_StereoMatrixV[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4].z;
					    u_xlat4.x = unity_StereoMatrixV[u_xlati1 / 4][u_xlati1 % 4].z * u_xlat0.x + u_xlat4.x;
					    u_xlat4.x = unity_StereoMatrixV[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4].z * u_xlat0.z + u_xlat4.x;
					    u_xlat4.x = unity_StereoMatrixV[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4].z * u_xlat0.w + u_xlat4.x;
					    vs_TEXCOORD2.z = (-u_xlat4.x);
					    u_xlat4.xyz = u_xlat0.yyy * unity_StereoMatrixVP[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4].xyw;
					    u_xlat4.xyz = unity_StereoMatrixVP[u_xlati1 / 4][u_xlati1 % 4].xyw * u_xlat0.xxx + u_xlat4.xyz;
					    u_xlat0.xyz = unity_StereoMatrixVP[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4].xyw * u_xlat0.zzz + u_xlat4.xyz;
					    u_xlat0.xyz = unity_StereoMatrixVP[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4].xyw * u_xlat0.www + u_xlat0.xyz;
					    u_xlat1.xz = u_xlat0.xz * vec2(0.5, 0.5);
					    u_xlat0.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat0.x * 0.5;
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati9 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat0.zz * unity_StereoScaleOffset[u_xlati9].zw;
					    vs_TEXCOORD2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati9].xy + u_xlat1.xy;
					    vs_TEXCOORD2.w = u_xlat0.z;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[5];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_1_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_1_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[9];
						mat4x4 unity_MatrixV;
						vec4 unused_3_2[4];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_4[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    u_xlat1 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat2 = min(u_xlat1.w, u_xlat1.z);
					    u_xlat2 = (-u_xlat1.z) + u_xlat2;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat2 + u_xlat1.z;
					    gl_Position.xyw = u_xlat1.xyw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy;
					    u_xlat1.x = u_xlat0.y * unity_MatrixV[1].z;
					    u_xlat1.x = unity_MatrixV[0].z * u_xlat0.x + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[2].z * u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = unity_MatrixV[3].z * u_xlat0.w + u_xlat1.x;
					    vs_TEXCOORD2.z = (-u_xlat1.x);
					    u_xlat1.xyz = u_xlat0.yyy * unity_MatrixVP[1].xyw;
					    u_xlat1.xyz = unity_MatrixVP[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = unity_MatrixVP[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
					    u_xlat0.xyz = unity_MatrixVP[3].xyw * u_xlat0.www + u_xlat0.xyz;
					    u_xlat1.xz = u_xlat0.xz * vec2(0.5, 0.5);
					    u_xlat0.x = u_xlat0.y * _ProjectionParams.x;
					    vs_TEXCOORD2.w = u_xlat0.z;
					    u_xlat1.w = u_xlat0.x * 0.5;
					    vs_TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform UnityPerCamera {
						vec4 unused_0_0[4];
						vec4 _ProjectionParams;
						vec4 unused_0_2[3];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_1_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_1_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_2_1[6];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[12];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_4[38];
						vec4 unity_StereoScaleOffset[2];
						vec4 unused_3_6;
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					vec4 u_xlat1;
					int u_xlati1;
					vec4 u_xlat2;
					vec3 u_xlat4;
					int u_xlati9;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlati1 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat0.yyyy * unity_StereoMatrixVP[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati1 / 4][u_xlati1 % 4] * u_xlat0.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4] * u_xlat0.zzzz + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4] * u_xlat0.wwww + u_xlat2;
					    u_xlat4.x = min(u_xlat2.w, u_xlat2.z);
					    u_xlat4.x = (-u_xlat2.z) + u_xlat4.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat4.x + u_xlat2.z;
					    gl_Position.xyw = u_xlat2.xyw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy;
					    u_xlat4.x = u_xlat0.y * unity_StereoMatrixV[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4].z;
					    u_xlat4.x = unity_StereoMatrixV[u_xlati1 / 4][u_xlati1 % 4].z * u_xlat0.x + u_xlat4.x;
					    u_xlat4.x = unity_StereoMatrixV[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4].z * u_xlat0.z + u_xlat4.x;
					    u_xlat4.x = unity_StereoMatrixV[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4].z * u_xlat0.w + u_xlat4.x;
					    vs_TEXCOORD2.z = (-u_xlat4.x);
					    u_xlat4.xyz = u_xlat0.yyy * unity_StereoMatrixVP[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4].xyw;
					    u_xlat4.xyz = unity_StereoMatrixVP[u_xlati1 / 4][u_xlati1 % 4].xyw * u_xlat0.xxx + u_xlat4.xyz;
					    u_xlat0.xyz = unity_StereoMatrixVP[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4].xyw * u_xlat0.zzz + u_xlat4.xyz;
					    u_xlat0.xyz = unity_StereoMatrixVP[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4].xyw * u_xlat0.www + u_xlat0.xyz;
					    u_xlat1.xz = u_xlat0.xz * vec2(0.5, 0.5);
					    u_xlat0.x = u_xlat0.y * _ProjectionParams.x;
					    u_xlat1.w = u_xlat0.x * 0.5;
					    u_xlat0.xy = u_xlat1.zz + u_xlat1.xw;
					    u_xlati9 = unity_StereoEyeIndex;
					    u_xlat1.xy = u_xlat0.zz * unity_StereoScaleOffset[u_xlati9].zw;
					    vs_TEXCOORD2.xy = u_xlat0.xy * unity_StereoScaleOffset[u_xlati9].xy + u_xlat1.xy;
					    vs_TEXCOORD2.w = u_xlat0.z;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[4];
						vec4 _Texture_ST;
						float _Transparent;
						float _TexturePatternStyle;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[6];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					uniform  sampler2D _Texture;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec3 u_xlat1;
					vec2 u_xlat2;
					void main()
					{
					    u_xlat0.x = _ScreenParams.x / _ScreenParams.y;
					    u_xlat2.xy = vs_TEXCOORD2.xy / vs_TEXCOORD2.ww;
					    u_xlat1.yz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat1.x = u_xlat0.x * u_xlat1.y;
					    u_xlat0.xy = u_xlat1.xz + (-vs_TEXCOORD1.xy);
					    u_xlat0.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat0.xy + vs_TEXCOORD1.xy;
					    u_xlat0.xy = u_xlat0.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat0 = texture(_Texture, u_xlat0.xy);
					    u_xlat0.x = u_xlat0.w + -1.0;
					    u_xlat0.x = _Transparent * u_xlat0.x + 0.5;
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[4];
						vec4 _Texture_ST;
						float _Transparent;
						float _TexturePatternStyle;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					uniform  sampler2D _Texture;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec3 u_xlat1;
					vec2 u_xlat2;
					void main()
					{
					    u_xlat0.x = _ScreenParams.x / _ScreenParams.y;
					    u_xlat2.xy = vs_TEXCOORD2.xy / vs_TEXCOORD2.ww;
					    u_xlat1.yz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat1.x = u_xlat0.x * u_xlat1.y;
					    u_xlat0.xy = u_xlat1.xz + (-vs_TEXCOORD1.xy);
					    u_xlat0.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat0.xy + vs_TEXCOORD1.xy;
					    u_xlat0.xy = u_xlat0.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat0 = texture(_Texture, u_xlat0.xy);
					    u_xlat0.x = u_xlat0.w + -1.0;
					    u_xlat0.x = _Transparent * u_xlat0.x + 0.5;
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[4];
						vec4 _Texture_ST;
						float _Transparent;
						float _TexturePatternStyle;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[6];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					uniform  sampler2D _Texture;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec3 u_xlat1;
					vec2 u_xlat2;
					void main()
					{
					    u_xlat0.x = _ScreenParams.x / _ScreenParams.y;
					    u_xlat2.xy = vs_TEXCOORD2.xy / vs_TEXCOORD2.ww;
					    u_xlat1.yz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat1.x = u_xlat0.x * u_xlat1.y;
					    u_xlat0.xy = u_xlat1.xz + (-vs_TEXCOORD1.xy);
					    u_xlat0.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat0.xy + vs_TEXCOORD1.xy;
					    u_xlat0.xy = u_xlat0.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat0 = texture(_Texture, u_xlat0.xy);
					    u_xlat0.x = u_xlat0.w + -1.0;
					    u_xlat0.x = _Transparent * u_xlat0.x + 0.5;
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[4];
						vec4 _Texture_ST;
						float _Transparent;
						float _TexturePatternStyle;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[5];
						vec4 _ScreenParams;
						vec4 unused_1_2[2];
					};
					uniform  sampler2D _Texture;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					vec3 u_xlat1;
					vec2 u_xlat2;
					void main()
					{
					    u_xlat0.x = _ScreenParams.x / _ScreenParams.y;
					    u_xlat2.xy = vs_TEXCOORD2.xy / vs_TEXCOORD2.ww;
					    u_xlat1.yz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
					    u_xlat1.x = u_xlat0.x * u_xlat1.y;
					    u_xlat0.xy = u_xlat1.xz + (-vs_TEXCOORD1.xy);
					    u_xlat0.xy = vec2(vec2(_TexturePatternStyle, _TexturePatternStyle)) * u_xlat0.xy + vs_TEXCOORD1.xy;
					    u_xlat0.xy = u_xlat0.xy * _Texture_ST.xy + _Texture_ST.zw;
					    u_xlat0 = texture(_Texture, u_xlat0.xy);
					    u_xlat0.x = u_xlat0.w + -1.0;
					    u_xlat0.x = _Transparent * u_xlat0.x + 0.5;
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
			}
		}
	}
	Fallback "Diffuse"
}