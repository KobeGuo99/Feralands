function GenericEnemyHurt(){
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if(_distanceToGo > enemySpeed) {
		image_speed = 1.0;
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if(hSpeed != 0) image_xscale = -sign(hSpeed);
		
		//collide and move
		//if there is a collision, stop knockback
		if(EnemyTileCollision()){
			xTo = x;
			yTo = y;
		}
	} else {
		x = xTo;
		y = yTo;
		if(statePrevious != ENEMYSTATE.ATTACK) state = statePrevious; else state = ENEMYSTATE.CHASE;
	}
	
	
}


function GenericEnemyDie(){
	sprite_index = sprDie;
	image_speed = 0.75;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if(_distanceToGo > enemySpeed){
		dir = point_direction(x,y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if(hSpeed != 0) image_xscale = -sign(hSpeed);
		
		//collide and move
		EnemyTileCollision();
	} else {
		x = xTo;
		y = yTo;
	}
	
	if(image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number) {
		instance_destroy();	
	}
}