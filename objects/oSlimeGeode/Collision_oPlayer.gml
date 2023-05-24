// Inside oSlime's collision event with oPlayer

if (state != ENEMYSTATE.DIE) {
    HurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), enemyForceTouch, enemyDamageTouch);
    // Add any other code that should execute when the player collides with the slime (e.g., knockback)
}
