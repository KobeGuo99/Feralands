/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//enemy sprites
sprMove = sSlimeRosy;
sprAttack = sSlimeRosyAttack;
sprDie = sSlimeRosyDie;
sprHurt = sSlimeRosyHurt;

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