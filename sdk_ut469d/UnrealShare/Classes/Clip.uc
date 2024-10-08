//=============================================================================
// Clip.
//=============================================================================
class Clip extends ShellBox;

#exec TEXTURE IMPORT NAME=I_ClipAmmo FILE=TEXTURES\HUD\i_clip.PCX GROUP="Icons"

#exec MESH IMPORT MESH=ClipM ANIVFILE=MODELS\aniv35.3D DATAFILE=MODELS\data35.3D LODSTYLE=8
#exec MESH ORIGIN MESH=ClipM X=0 Y=100 Z=50 YAW=0
#exec MESH SEQUENCE MESH=ClipM SEQ=All    STARTFRAME=0  NUMFRAMES=1
#exec TEXTURE IMPORT NAME=Jclip1 FILE=MODELS\clip.PCX GROUP="Skins" FLAGS=2
#exec MESHMAP SCALE MESHMAP=ClipM X=0.02 Y=0.02 Z=0.04
#exec MESHMAP SETTEXTURE MESHMAP=ClipM NUM=2 TEXTURE=Jclip1

defaultproperties
{
     AmmoAmount=20
     ParentAmmo=UnrealShare.ShellBox
     PickupMessage="You picked up a clip"
     PickupViewMesh=UnrealShare.ClipM
     Icon=UnrealShare.I_ClipAmmo
     Mesh=UnrealShare.ClipM
     CollisionRadius=+00020.000000
     CollisionHeight=+00004.000000
}
