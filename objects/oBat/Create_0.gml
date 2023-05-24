
// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//enemy sprites
sprMove = sBat;
sprAttack = sBat;
sprDie = sBatDie;
sprHurt = sBatHurt;

//enemy scripts
enemyScript[ENEMYSTATE.WANDER] = BatWander;
enemyScript[ENEMYSTATE.CHASE] = BatChase;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = GenericEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GenericEnemyDie;

//drops
entityDropList = choose(
	[oCoin],
	[oCoin],
	[oCoin],
	[oCoin, oCoin],
	[oCoin, oCoin, oCoin],
	[oBombDrop],
	[oCoin, oBombDrop],
	[oArrowDrop]
);