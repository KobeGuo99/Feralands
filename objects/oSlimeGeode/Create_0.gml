/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//enemy sprites
sprMove = sSlimeGeode;
sprAttack = sSlimeGeodeAttack;
sprDie = sSlimeGeodeDie;
sprHurt = sSlimeGeodeHurt;

//enemy scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
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