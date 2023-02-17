/// @description cause a room transition

if(instance_exists(oPlayer)) && (position_meeting(oPlayer.x, oPlayer.y, id)) {
	if(!instance_exists(oTransition)){
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = oPlayer.direction;
		
		room_goto(targetRoom);
		
		//with(oPlayer) state = PlayerStateTransition;
		//RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
		
		//RoomTransition(TRANS_TYPE.FADE, targetRoom);
		instance_destroy();
	}
}

