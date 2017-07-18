#include "q_shared.h"
#include "sys_thread.h"
#include "cvar.h"

//#define COMPILER_GCC
#define DX_TO_GL_ABSTRACTION
#define POSIX
#include "togl/rendermechanism.h"
#include "qcommon_io.h"
#include "xassets.h"
#include "qcommon_mem.h"

cvar_t* r_reflectionProbeGenerate;


extern "C"
{

void R_ReflectionProbeRegisterDvars()
{	
	r_reflectionProbeGenerate = Cvar_RegisterBool("r_reflectionProbeGenerate", qfalse, CVAR_ROM, "Probe reflections");
}

/*
void XAnimFreeList(){};
void XAnimFree(){};
*/
//void XModelPartsFree(){};
void *__cdecl R_AllocStaticVertexBuffer(IDirect3DVertexBuffer9 **a1, int a2)
{
	return NULL;
}

void R_ShowDirtyDiscError()
{
	Com_PrintError("Error reading fastfile?\n");
}

void *__cdecl R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9 **ib, int sizeInBytes)
{
	return NULL;
}

void __cdecl R_SyncRenderThread()
{

}


void __cdecl R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9 *vb)
{
}

void __cdecl R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9 *ib)
{
}

void __cdecl R_EnumImages(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_EnumMaterials(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_EnumTechniqueSets(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_ShutdownStreams()
{
}

void __cdecl RB_UnbindAllImages()
{
}

void __cdecl R_DelayLoadImage(union XAssetHeader header)
{
}

void __cdecl R_ClearAllStaticModelCacheRefs()
{
}

void __cdecl R_UnloadWorld()
{
}

void __cdecl RB_ClearPixelShader()
{
}

void __cdecl RB_ClearVertexShader()
{
}

void __cdecl RB_ClearVertexDecl()
{
}

void __cdecl DB_LoadSounds()
{
}

void __cdecl DB_SaveSounds()
{
}

struct Material *__cdecl Material_RegisterHandle(const char *name, int imageTrack)
{
	return NULL;
}

void __cdecl Material_DirtySort()
{
}

void __cdecl Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
    //image->texture.basemap = 0;
}

void __cdecl Load_VertexBuffer(IDirect3DVertexBuffer9 **vb, void *bufferData, int sizeInBytes)
{
    *vb = 0;
}

void __cdecl Load_BuildVertexDecl(struct MaterialVertexDeclaration **mtlVertDecl)
{
}

void __cdecl Load_CreateMaterialVertexShader(struct GfxVertexShaderLoadDef *loadDef, struct MaterialVertexShader *mtlShader)
{
}

void __cdecl Load_CreateMaterialPixelShader(struct GfxPixelShaderLoadDef *loadDef, struct MaterialPixelShader *mtlShader)
{
}

void __cdecl Load_SndAliasCustom(snd_alias_list_t **name)
{
  if ( *name )
  {
    varXStringPtr = (char***)name;
    Load_XStringPtr(0);
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr);
    *name = xah.sound;
  }
}

void __cdecl Load_SetSoundData(byte **arg0, MssSound *a1)
{
}

void __cdecl Material_UploadShaders(struct MaterialTechniqueSet *techset)
{
}

void __cdecl Image_Release(struct GfxImage *image)
{
}

void __cdecl Material_ReleaseTechniqueSetResources(struct MaterialTechniqueSet *techniqueSet)
{
}

void Material_OverrideTechniqueSets()
{
}

void Material_ClearShaderUploadList(void)
{
}

void __cdecl Material_OriginalRemapTechniqueSet(MaterialTechniqueSet *mt)
{
}

void __cdecl Sys_FastFileBlockedCallback()
{
}

void __cdecl Load_PicmipWater(struct water_t **water)
{
}

void* __cdecl Hunk_AllocXModelPrecache(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecache", 22);
}

void* __cdecl Hunk_AllocXModelPrecacheColl(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecacheColl", 28);
}

XModel *__cdecl R_RegisterModel(const char *name)
{
  return XModelPrecache(name, Hunk_AllocXModelPrecache, Hunk_AllocXModelPrecacheColl);
}


double __cdecl R_GetBaseLodDist(const float *origin)
{
    return 0;
}

double __cdecl R_GetAdjustedLodDist(float dist, enum XModelLodRampType lodRampType)
{
    return 0;
}

struct FxEffectDef *__cdecl FX_Register(const char *name)
{
    return NULL;
}

struct snd_alias_t* __cdecl Com_FindSoundAlias(const char *name)
{
    return NULL;
}
}