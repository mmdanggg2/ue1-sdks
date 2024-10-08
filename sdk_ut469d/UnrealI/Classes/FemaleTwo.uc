//=============================================================================
// FemaleTwo.
//=============================================================================
class FemaleTwo extends Female;

#exec MESH IMPORT MESH=Female2 ANIVFILE=..\unrealshare\MODELS\Femal2_a.3D DATAFILE=..\unrealshare\MODELS\Femal2_d.3D X=0 Y=0 Z=0 ZEROTEX=1 UNMIRROR=1
#exec MESH ORIGIN MESH=Female2 X=40 Y=-75 Z=20 YAW=64 ROLL=-64

#exec MESH SEQUENCE MESH=Female2 SEQ=All       STARTFRAME=0   NUMFRAMES=598 
#exec MESH SEQUENCE MESH=Female2 SEQ=GutHit    STARTFRAME=0   NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=AimDnLg   STARTFRAME=1   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=AimDnSm   STARTFRAME=2   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=AimUpLg   STARTFRAME=3   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=AimUpSm   STARTFRAME=4   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=Taunt1    STARTFRAME=5   NUMFRAMES=15 RATE=15		Group=Gesture
#exec MESH SEQUENCE MESH=Female2 SEQ=Breath1   STARTFRAME=20  NUMFRAMES=7  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=Breath2   STARTFRAME=27  NUMFRAMES=15 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=CockGun   STARTFRAME=42  NUMFRAMES=6  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead2     STARTFRAME=48  NUMFRAMES=18 RATE=12		Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead3     STARTFRAME=66  NUMFRAMES=16 RATE=12		Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead4     STARTFRAME=82  NUMFRAMES=13 RATE=12		Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead5     STARTFRAME=95  NUMFRAMES=16 RATE=12		Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead6     STARTFRAME=111 NUMFRAMES=11 RATE=12
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead7     STARTFRAME=122 NUMFRAMES=23 RATE=12
#exec MESH SEQUENCE MESH=Female2 SEQ=DeathEnd  STARTFRAME=481 NUMFRAMES=1
#exec MESH SEQUENCE MESH=Female1 SEQ=DeathEnd2 STARTFRAME=65  NUMFRAMES=1
#exec MESH SEQUENCE MESH=Female1 SEQ=DeathEnd3 STARTFRAME=81  NUMFRAMES=1
#exec MESH SEQUENCE MESH=Female2 SEQ=DuckWlkL  STARTFRAME=145 NUMFRAMES=15 RATE=15		Group=Ducking
#exec MESH SEQUENCE MESH=Female2 SEQ=DuckWlkS  STARTFRAME=160 NUMFRAMES=15 RATE=15		Group=Ducking
#exec MESH SEQUENCE MESH=Female2 SEQ=HeadHit   STARTFRAME=175 NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=JumpLgFr  STARTFRAME=176 NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=Female2 SEQ=JumpSmFr  STARTFRAME=177 NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=Female2 SEQ=LandLgFr  STARTFRAME=178 NUMFRAMES=1				Group=Landing
#exec MESH SEQUENCE MESH=Female2 SEQ=LandSmFr  STARTFRAME=179 NUMFRAMES=1				Group=Landing
#exec MESH SEQUENCE MESH=Female2 SEQ=LeftHit   STARTFRAME=180 NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=Look      STARTFRAME=181 NUMFRAMES=25 RATE=15//FIXME - can't use! - make much more subtle
#exec MESH SEQUENCE MESH=Female2 SEQ=RightHit  STARTFRAME=206 NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=Female2 SEQ=RunLg     STARTFRAME=207 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=RunLgFr   STARTFRAME=217 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=RunSm     STARTFRAME=227 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=RunSmFr   STARTFRAME=237 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=StillFrRp STARTFRAME=247 NUMFRAMES=15 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=StillLgFr STARTFRAME=262 NUMFRAMES=10 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=StillSmFr STARTFRAME=272 NUMFRAMES=8  RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=SwimLg    STARTFRAME=280 NUMFRAMES=18 RATE=15
#exec MESH SEQUENCE MESH=Female2 SEQ=SwimSm    STARTFRAME=298 NUMFRAMES=18 RATE=15
#exec MESH SEQUENCE MESH=Female2 SEQ=TreadLg   STARTFRAME=316 NUMFRAMES=15 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=TreadSm   STARTFRAME=331 NUMFRAMES=15 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=Victory1  STARTFRAME=346 NUMFRAMES=18 RATE=15		Group=Gesture
#exec MESH SEQUENCE MESH=Female2 SEQ=WalkLg    STARTFRAME=364 NUMFRAMES=15 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=WalkLgFr  STARTFRAME=379 NUMFRAMES=15 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=WalkSm    STARTFRAME=394 NUMFRAMES=15 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=WalkSmFr  STARTFRAME=409 NUMFRAMES=15 RATE=17
#exec MESH SEQUENCE MESH=Female2 SEQ=Wave      STARTFRAME=424 NUMFRAMES=15 RATE=15		Group=Gesture
#exec MESH SEQUENCE MESH=Female2 SEQ=Dead1     STARTFRAME=439 NUMFRAMES=43 RATE=12
#exec MESH SEQUENCE MESH=Female2 SEQ=Walk      STARTFRAME=482 NUMFRAMES=15 RATE=15
#exec MESH SEQUENCE MESH=Female2 SEQ=TurnLg    STARTFRAME=379 NUMFRAMES=2  RATE=15
#exec MESH SEQUENCE MESH=Female2 SEQ=TurnSm    STARTFRAME=409 NUMFRAMES=2  RATE=15
#exec MESH SEQUENCE MESH=Female2 SEQ=Taunt1L   STARTFRAME=497 NUMFRAMES=15 RATE=15		Group=Gesture
#exec MESH SEQUENCE MESH=Female2 SEQ=Breath1L  STARTFRAME=512 NUMFRAMES=7  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=Breath2L  STARTFRAME=519 NUMFRAMES=15 RATE=15		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=CockGunL  STARTFRAME=534 NUMFRAMES=6  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=Female2 SEQ=LookL     STARTFRAME=540 NUMFRAMES=25 RATE=15//FIXME - can't use! - make much more subtle
#exec MESH SEQUENCE MESH=Female2 SEQ=Victory1L STARTFRAME=565 NUMFRAMES=18 RATE=15		Group=Gesture
#exec MESH SEQUENCE MESH=Female2 SEQ=WaveL     STARTFRAME=583 NUMFRAMES=15 RATE=15		Group=Gesture

#exec MESHMAP SCALE MESHMAP=Female2 X=0.056 Y=0.056 Z=0.112
#exec TEXTURE IMPORT NAME=Sonya FILE=..\unrealshare\MODELS\Sonya.PCX GROUP=Skins 
#exec MESHMAP SETTEXTURE MESHMAP=Female2 NUM=0 TEXTURE=Sonya

#exec TEXTURE IMPORT NAME=F2Female2 FILE=MODELS\Fem2_1.PCX GROUP=Skins 
#exec TEXTURE IMPORT NAME=F2Female3 FILE=MODELS\Fem2_2.PCX GROUP=Skins 
#exec TEXTURE IMPORT NAME=F2Female4 FILE=MODELS\Fem2_3.PCX GROUP=Skins 

#exec MESH NOTIFY MESH=Female2 SEQ=RunLG TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunLG TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunLGFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunLGFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunSM TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunSM TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunSMFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=RunSMFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkLG TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkLG TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkLGFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkLGFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkSM TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkSM TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkSMFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=WalkSMFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=Female2 SEQ=Dead2 TIME=0.92 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead3 TIME=0.45 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead4 TIME=0.54 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead5 TIME=0.68 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead6 TIME=0.57 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead7 TIME=0.78 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead1 TIME=0.46 FUNCTION=LandThump
#exec MESH NOTIFY MESH=Female2 SEQ=Dead1 TIME=0.65 FUNCTION=Convulse

defaultproperties
{
     Handedness=1.000000
     Skin=Sonya
     Mesh=Mesh'UnrealI.Female2'
	CarcassType=FemaleTwoCarcass
	Menuname="Female 2"
}
