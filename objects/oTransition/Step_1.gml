/// @description Progress transition

with(oPlayer) {
	if (oPlayer.state != PlayerStateDead) state = PlayerStateTransition;
}


if(leading == OUT){
	percent = min(1, percent + TRANSITION_SPEED);
	if(percent >= 1){
		room_goto(target);
		leading = IN;
	}
} else {
	//leading == IN	
	percent = max(0, percent - TRANSITION_SPEED);
	if(percent <= 0) {
		//if screen fully revealed
		with(oPlayer) state = PlayerStateFree;
		instance_destroy();
	}
}
