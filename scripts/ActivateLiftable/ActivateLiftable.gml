/// @arg id
function ActivateLiftable(){
	if(global.iLifted == noone){
		PlayerActOutAnimation(sPlayerLift);
		
		global.iLifted = argument0;
		
		with(global.iLifted){
			lifted = true;
			persistent = true;
		}
	}
}