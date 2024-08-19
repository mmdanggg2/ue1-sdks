//=============================================================================
// MaleThreeBot.
//=============================================================================
class MaleThreeBot extends MaleBot;

#exec AUDIO IMPORT FILE="Sounds\male\jump11.WAV" NAME="MJump3" GROUP="Male"
#exec AUDIO IMPORT FILE="Sounds\male\land12.WAV" NAME="MLand3" GROUP="Male"

function ForceMeshToExist()
{
	Spawn(class'MaleThree');
}


defaultproperties
{
     Mesh=Male3
     Skin=Texture'UnrealShare.Dante'
	 JumpSound=MJump3
	 LandGrunt=MLand3
	 CarcassType=MaleThreeCarcass
}
