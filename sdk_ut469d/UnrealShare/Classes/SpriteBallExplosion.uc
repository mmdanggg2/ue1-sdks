//=============================================================================
// SpriteBallExplosion.
//=============================================================================
class SpriteBallExplosion extends AnimSpriteEffect;

#exec TEXTURE IMPORT NAME=ExplosionPal FILE=textures\exppal.pcx GROUP=Effects
#exec OBJ LOAD FILE=textures\MainE.utx PACKAGE=UnrealShare.MainEffect

#exec AUDIO IMPORT FILE="sounds\flak\expl2.wav" NAME="Explo1" GROUP="General"

var int ExpCount;

function MakeSound()
{
	PlaySound(EffectSound1,,7.0);
}

simulated function PostBeginPlay()
{
	if ( Level.NetMode != NM_Client )
		MakeSound();
	Texture = SpriteAnim[int(FRand()*5)];	
	if (Level.NetMode==NM_Standalone) 
		SetTimer(0.05+FRand()*0.04,False);
	Super.PostBeginPlay();		
}

simulated Function Timer()
{
	local BlackSmoke b; 
	local vector TempVect;


	ExpCount++;
	if (FRand()<0.4)
	{
		TempVect.X = (FRand()-0.5)*80.0;
		TempVect.Y = (FRand()-0.5)*80.0;
		TempVect.Z = (FRand()-0.5)*80.0;				
		Spawn(class'SpriteBallChild',Self, '', Location+TempVect);
	}
	
	if (FRand()<0.3)
	{
		TempVect.X = (FRand()-0.5)*60.0;
		TempVect.Y = (FRand()-0.5)*60.0;
		TempVect.Z = (FRand()-0.5)*60.0;		
		b = Spawn(class'BlackSmoke',Self, '', Location+TempVect);
		b.DrawScale = FRand()*2.0+3.5;
	}
	
	if (ExpCount<4) SetTimer(0.05+FRand()*0.05,False);
	
}

defaultproperties
{
     SpriteAnim(0)=Texture'UnrealShare.Maineffect.e1_a00'
     SpriteAnim(1)=Texture'UnrealShare.Maineffect.e2_a00'
     SpriteAnim(2)=Texture'UnrealShare.Maineffect.e3_a00'
     SpriteAnim(3)=Texture'UnrealShare.Maineffect.e4_a00'
     SpriteAnim(4)=Texture'UnrealShare.Maineffect.e5_a00'
     NumFrames=8
     Pause=0.050000
     EffectSound1=Sound'UnrealShare.Explo1'
     DrawType=DT_SpriteAnimOnce
     Style=STY_Translucent
     Texture=Texture'UnrealShare.Maineffect.e1_a00'
     Skin=Texture'UnrealShare.ExplosionPal'
     DrawScale=3.500000
     bMeshCurvy=False
     LightType=LT_TexturePaletteOnce
     LightEffect=LE_NonIncidence
     LightBrightness=192
     LightHue=27
     LightSaturation=71
     LightRadius=9
     bCorona=False
     LifeSpan=0.700000
     RemoteRole=ROLE_SimulatedProxy
}
