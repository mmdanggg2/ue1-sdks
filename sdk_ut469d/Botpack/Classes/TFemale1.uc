//=============================================================================
// TFemale1.
//=============================================================================
class TFemale1 extends TournamentFemale;

#exec MESH IMPORT MESH=FCommando ANIVFILE=MODELS\tfemale1_a.3D DATAFILE=MODELS\tfemale1_d.3D UNMIRROR=1 LODSTYLE=12
#exec MESH ORIGIN MESH=FCommando X=-30 Y=-115 Z=20 YAW=64 ROLL=-64

#exec MESH SEQUENCE MESH=FCommando SEQ=All       STARTFRAME=0   NUMFRAMES=681 
#exec MESH SEQUENCE MESH=FCommando SEQ=GutHit    STARTFRAME=0   NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=AimDnLg   STARTFRAME=1   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=AimDnSm   STARTFRAME=2   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=AimUpLg   STARTFRAME=3   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=AimUpSm   STARTFRAME=4   NUMFRAMES=1				Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Taunt1    STARTFRAME=5   NUMFRAMES=15 RATE=20	Group=Gesture
#exec MESH SEQUENCE MESH=FCommando SEQ=Breath1   STARTFRAME=20  NUMFRAMES=7  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Breath2   STARTFRAME=27  NUMFRAMES=20 RATE=7		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=CockGun   STARTFRAME=47  NUMFRAMES=6  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=DuckWlkL  STARTFRAME=53  NUMFRAMES=15 RATE=15	Group=Ducking
#exec MESH SEQUENCE MESH=FCommando SEQ=DuckWlkS  STARTFRAME=68  NUMFRAMES=15 RATE=15	Group=Ducking
#exec MESH SEQUENCE MESH=FCommando SEQ=HeadHit   STARTFRAME=83  NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=JumpLgFr  STARTFRAME=84  NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=JumpSmFr  STARTFRAME=85  NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=LandLgFr  STARTFRAME=86  NUMFRAMES=1				Group=Landing
#exec MESH SEQUENCE MESH=FCommando SEQ=LandSmFr  STARTFRAME=87  NUMFRAMES=1				Group=Landing
#exec MESH SEQUENCE MESH=FCommando SEQ=LeftHit   STARTFRAME=88  NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=Look      STARTFRAME=89  NUMFRAMES=35 RATE=15    Group=Waiting 
#exec MESH SEQUENCE MESH=FCommando SEQ=RightHit  STARTFRAME=124 NUMFRAMES=1				Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=RunLg     STARTFRAME=125 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=FCommando SEQ=RunLgFr   STARTFRAME=135 NUMFRAMES=10 RATE=17    Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=RunSm     STARTFRAME=145 NUMFRAMES=10 RATE=17
#exec MESH SEQUENCE MESH=FCommando SEQ=RunSmFr   STARTFRAME=155 NUMFRAMES=10 RATE=17	Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=StillFrRp STARTFRAME=165 NUMFRAMES=10 RATE=15	Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=StillLgFr STARTFRAME=175 NUMFRAMES=10 RATE=15	Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=StillSmFr STARTFRAME=185 NUMFRAMES=8  RATE=15	Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=SwimLg    STARTFRAME=193 NUMFRAMES=18 RATE=15
#exec MESH SEQUENCE MESH=FCommando SEQ=SwimSm    STARTFRAME=211 NUMFRAMES=18 RATE=15
#exec MESH SEQUENCE MESH=FCommando SEQ=TreadLg   STARTFRAME=229 NUMFRAMES=15 RATE=15	Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=TreadSm   STARTFRAME=244 NUMFRAMES=15 RATE=15	Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Victory1  STARTFRAME=259 NUMFRAMES=10 RATE=6  	Group=Gesture
#exec MESH SEQUENCE MESH=FCommando SEQ=WalkLg    STARTFRAME=269 NUMFRAMES=15 RATE=18
#exec MESH SEQUENCE MESH=FCommando SEQ=WalkLgFr  STARTFRAME=284 NUMFRAMES=15 RATE=18	Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=WalkSm    STARTFRAME=299 NUMFRAMES=15 RATE=18
#exec MESH SEQUENCE MESH=FCommando SEQ=WalkSmFr  STARTFRAME=314 NUMFRAMES=15 RATE=18	Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=Wave      STARTFRAME=329 NUMFRAMES=15 RATE=15	Group=Gesture
#exec MESH SEQUENCE MESH=FCommando SEQ=Walk      STARTFRAME=344 NUMFRAMES=15 RATE=18
#exec MESH SEQUENCE MESH=FCommando SEQ=TurnLg    STARTFRAME=284 NUMFRAMES=2  RATE=15					// 2 frames of walklgfr
#exec MESH SEQUENCE MESH=FCommando SEQ=TurnSm    STARTFRAME=314 NUMFRAMES=2  RATE=15					// 2 frames of walksmfr
#exec MESH SEQUENCE MESH=FCommando SEQ=Breath1L  STARTFRAME=359 NUMFRAMES=7  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Breath2L  STARTFRAME=366 NUMFRAMES=20 RATE=7		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=CockGunL  STARTFRAME=386 NUMFRAMES=6  RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=LookL     STARTFRAME=392 NUMFRAMES=35 RATE=15    Group=Waiting   
#exec MESH SEQUENCE MESH=FCommando SEQ=WaveL     STARTFRAME=427 NUMFRAMES=15 RATE=15	Group=Gesture
#exec MESH SEQUENCE MESH=FCommando SEQ=Chat1     STARTFRAME=442 NUMFRAMES=13 RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Chat2     STARTFRAME=455 NUMFRAMES=10 RATE=6		Group=Waiting
#exec MESH SEQUENCE MESH=FCommando SEQ=Thrust    STARTFRAME=465 NUMFRAMES=15 RATE=20	Group=Gesture
#exec MESH SEQUENCE MESH=FCommando SEQ=DodgeB    STARTFRAME=480 NUMFRAMES=1				Group=Jumping  
#exec MESH SEQUENCE MESH=FCommando SEQ=DodgeF    STARTFRAME=481 NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=DodgeR    STARTFRAME=482 NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=DodgeL    STARTFRAME=483 NUMFRAMES=1				Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=Fighter   STARTFRAME=175 NUMFRAMES=1								// first frame of stilllgfr
#exec MESH SEQUENCE MESH=FCommando SEQ=Flip      STARTFRAME=484 NUMFRAMES=31			Group=Jumping
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead2     STARTFRAME=515 NUMFRAMES=18 RATE=10	Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead3     STARTFRAME=533 NUMFRAMES=16 RATE=10	Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead4     STARTFRAME=549 NUMFRAMES=13 RATE=10	Group=TakeHit
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead6     STARTFRAME=562 NUMFRAMES=11 RATE=10

#exec MESH SEQUENCE MESH=FCommando SEQ=DeathEnd  STARTFRAME=532 NUMFRAMES=1
#exec MESH SEQUENCE MESH=FCommando SEQ=DeathEnd2 STARTFRAME=561 NUMFRAMES=1
#exec MESH SEQUENCE MESH=FCommando SEQ=DeathEnd3 STARTFRAME=572 NUMFRAMES=1

#exec MESH SEQUENCE MESH=FCommando SEQ=Dead1     STARTFRAME=573 NUMFRAMES=23 RATE=12
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead5     STARTFRAME=596 NUMFRAMES=13 RATE=12	
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead9     STARTFRAME=609 NUMFRAMES=20 RATE=12
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead9B    STARTFRAME=629 NUMFRAMES=11 RATE=12
#exec MESH SEQUENCE MESH=FCommando SEQ=Dead7     STARTFRAME=640 NUMFRAMES=11 RATE=12
#exec MESH SEQUENCE MESH=FCommando SEQ=BackRun   STARTFRAME=651 NUMFRAMES=10 RATE=17		Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=StrafeL   STARTFRAME=661 NUMFRAMES=10 RATE=17		Group=MovingFire
#exec MESH SEQUENCE MESH=FCommando SEQ=StrafeR   STARTFRAME=671 NUMFRAMES=10 RATE=17		Group=MovingFire

#exec MESHMAP SCALE MESHMAP=FCommando X=0.0625 Y=0.0625 Z=0.125

#exec MESH NOTIFY MESH=FCommando SEQ=RunLG TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunLG TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunLGFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunLGFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunSM TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunSM TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunSMFR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=RunSMFR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=StrafeL TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=StrafeL TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=StrafeR TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=StrafeR TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=BackRun TIME=0.25 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=BackRun TIME=0.75 FUNCTION=PlayFootStep
#exec MESH NOTIFY MESH=FCommando SEQ=Dead2  TIME=0.66 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead3  TIME=0.38 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead4  TIME=0.46 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead6  TIME=0.54 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead1  TIME=0.69 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead5  TIME=0.61 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead9b TIME=0.45 FUNCTION=LandThump
#exec MESH NOTIFY MESH=FCommando SEQ=Dead7  TIME=0.54 FUNCTION=LandThump

defaultproperties
{
	Handedness=-1.000000
	Mesh=Mesh'Botpack.FCommando'
	SelectionMesh="Botpack.SelectionFemale1"
	SpecialMesh="Botpack.TrophyFemale1"
	CarcassType=TFemale1Carcass
	Menuname="Female Commando"
	VoiceType="BotPack.VoiceFemaleOne"
	TeamSkin1=0
	TeamSkin2=1
	FixedSkin=0
	FaceSkin=3
	DefaultSkinName="FCommandoSkins.cmdo"
	DefaultPackage="FCommandoSkins."
}
