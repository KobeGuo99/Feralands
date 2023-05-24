
event_inherited();

if(!global.playerItemUnlocked[collectScriptArg[0]]) {
	//instance_change(oCoin, true); //if you want to change it into a coin if not unlocked
	instance_destroy(); //i prefer to just have it not drop anything
}