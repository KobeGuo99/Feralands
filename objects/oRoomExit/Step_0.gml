/// @description cause a room transition

if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x, oPlayer.y, id)) {
    if (!instance_exists(oTransition)) && (oPlayer.state != PlayerStateDead) {
        global.targetRoom = targetRoom;
        global.targetX = targetX;
        global.targetY = targetY;
        global.targetDirection = oPlayer.direction;

        // Fix for running during transition
        with (oPlayer) {
            if (global.iLifted != noone) {
                spriteIdle = sPlayerCarrying;
                spriteRun = sPlayerRunCarrying;
            } else {
                spriteIdle = sPlayer;
                spriteRun = sPlayerRun;
            }
            localFrame = 0;
            hSpeed = 0;
            vSpeed = 0;
        }

        switch (transitionType) {
            case 0: {
                room_goto(targetRoom);
            } break;

            case 1: {
                with (oPlayer) state = PlayerStateTransition;
                RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
            } break;

            case 2: {
                with (oPlayer) state = PlayerStateTransition;
                RoomTransition(TRANS_TYPE.FADE, targetRoom);
            } break;
        }
        instance_destroy();
    }
}


