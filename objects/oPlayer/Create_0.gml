state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.5;
speedRoll = 3.0;
distanceRoll = 40;
distanceBonk = 30;
distanceBonkHeight = 12;
speedBonk = 1.5;
z = 0;

animationEndScript = -1;

spriteRun = sPlayerRun;
spriteIdle = sPlayer;
spriteRoll = sPlayerRoll;
localFrame = 0;

if(global.targetX != -1){
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}