
function AttackSlash(){
	//attack just started
	if(sprite_index != sPlayerAttackSlash){
		
		//set up correct animation
		sprite_index = sPlayerAttackSlash;
		localFrame = 0;
		image_index = 0;
		
		//clear hit list
		if(!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
		
	}
	
	CalcAttack(sPlayerAttackSlashHB);
	
	//update sprite
	PlayerAnimateSprite();
	if(animationEnd){
		state = PlayerStateFree;
		animationEnd = false;
	}
}


function AttackSpin(){

}


//use attack hitbox and check for hits
function CalcAttack(argument0){
	mask_index = argument0
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if(hits > 0) {
		for(var i = 0; i < hits; i++){
			//if this instance has not yet been hit by this attack, hit it!
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with(hitID){
					if(object_is_ancestor(object_index, pEnemy)){
						HurtEnemy(id, 5, other.id, 10);	
					}else if(entityHitScript != -1) script_execute(entityHitScript);
					
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}


function HurtEnemy(_enemy, _damage, _source, _knockback) {
	with(_enemy) {
		//show_debug_message("HurtEnemy called with enemyID=" + string(id) + ", damage=" + string(_damage) + ", sourceID=" + string(_source.id) + ", knockback=" + string(_knockback));
		if(state != ENEMYSTATE.DIE){
			enemyHP -= _damage;
			flash = 1;
			
			//hurt or dead?
			if(enemyHP <= 0){
				state = ENEMYSTATE.DIE;	
			} else {
				if(state != ENEMYSTATE.HURT) statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if(_knockback != 0){
				var _knockDirection = point_direction(x, y, (_source).x, (_source).y);
				xTo = x - lengthdir_x(_knockback, _knockDirection);
				yTo = y - lengthdir_y(_knockback, _knockDirection);
			}
		}
	}
}