//=============================================================================
// EditorEngine: The UnrealEd subsystem.
// This is a built-in Unreal class and it shouldn't be modified.
//=============================================================================
class EditorEngine extends Engine
	native
	noexport
	transient;

#exec Texture Import File=Textures\B_MenuDn.pcx Mips=Off
#exec Texture Import File=Textures\B_MenuUp.pcx Mips=Off
#exec Texture Import File=Textures\B_CollOn.pcx Mips=Off
#exec Texture Import File=Textures\B_CollOf.pcx Mips=Off
#exec Texture Import File=Textures\B_PlyrOn.pcx Mips=Off
#exec Texture Import File=Textures\B_PlyrOf.pcx Mips=Off
#exec Texture Import File=Textures\B_LiteOn.pcx Mips=Off
#exec Texture Import File=Textures\B_LiteOf.pcx Mips=Off

#exec Texture Import File=Textures\Bad.pcx
#exec Texture Import File=Textures\Bkgnd.pcx
#exec Texture Import File=Textures\BkgndHi.pcx

// Objects.
var const pointer     NotifyVtbl;
var const level       Level;
var const model       TempModel;
var const texture     CurrentTexture;
var const class       CurrentClass;
var const transbuffer Trans;
var const textbuffer  Results;
var const pointer     Pad[8];

// Icons.
var const texture MenuUp, MenuDn;
var const texture CollOn, CollOff;
var const texture PlyrOn, PlyrOff;
var const texture LiteOn, LiteOff;

// Textures.
var const texture Bad, Bkgnd, BkgndHi;

// Toggles.
var const bool bFastRebuild, bBootstrapping, bDeletingActors;

// Other variables.
var const config int AutoSaveIndex;
var const int AutoSaveCount, Mode, ClickFlags;
var const float MovementSpeed;
var const package PackageContext;
var const vector AddLocation;
var const plane AddPlane;

// Misc.
var const array<Object> Tools;
var const class BrowseClass;

// Grid.
var const pointer ConstraintsVtbl;
var(Grid) config bool GridEnabled;
var(Grid) config bool SnapVertices;
var(Grid) config bool AffectRegion;
var(Grid) config bool TextureLock;
var(Grid) config bool SelectionLock;
var(Grid) config float SnapDistance;
var(Grid) config vector GridSize;

// Rotation grid.
var(RotationGrid) config bool RotGridEnabled;
var(RotationGrid) config rotator RotGridSize;

// Advanced.
var(Advanced) config float FovAngleDegrees;
var(Advanced) config bool GodMode;
var(Advanced) config bool AutoSave;
//
// OldUnreal: Set to true to dynamically update MyLevel
// actors after recompiling them. This is an experimental
// feature that is currently disabled by default.
//
var(Advanced) config bool DynamicActorRecompilation;
//
// OldUnreal: Set to true to warn mappers when they're about
// to recompile the code for MyLevel actors. This is currently
// on by default.
// The warnings will not be shown if DynamicActorRecompilation
// is set to true.
//
var(Advanced) config bool WarnForActorRecompilation;
var(Advanced) config byte AutosaveTimeMinutes;
var(Advanced) config string GameCommandLine;
var(Advanced) config array<string> EditPackages;

// Color preferences.
var(Colors) config color
	C_WorldBox,
	C_GroundPlane,
	C_GroundHighlight,
	C_BrushWire,
	C_Pivot,
	C_Select,
	C_Current,
	C_AddWire,
	C_SubtractWire,
	C_GreyWire,
	C_BrushVertex,
	C_BrushSnap,
	C_Invalid,
	C_ActorWire,
	C_ActorHiWire,
	C_Black,
	C_White,
	C_Mask,
	C_SemiSolidWire,
	C_NonSolidWire,
	C_WireBackground,
	C_WireGridAxis,
	C_ActorArrow,
	C_ScaleBox,
	C_ScaleBoxHi,
	C_ZoneWire,
	C_Mover,
	C_OrthoBackground;

var Font ScaledSmallFont, ScaledMedFont, ScaledBigFont, ScaledLargeFont;

var const native pointer VertexEditingInternal[7];

// Brush Builders
var const array<BrushBuilder> BrushBuilders;

var const native int ActorRecompilationWarningStatus;

defaultproperties
{
     MenuUp=B_MenuUp
     MenuDn=B_MenuDn
     CollOn=B_CollOn
     CollOff=B_CollOf
     PlyrOn=B_PlyrOn
     PlyrOff=B_PlyrOf
     LiteOn=B_LiteOn
     Bad=Bad
     Bkgnd=Bkgnd
     BkgndHi=BkgndHi
	 GridSize=(X=16,Y=16,Z=16)
	 WarnForActorRecompilation=True
	 DynamicActorRecompilation=False
}
