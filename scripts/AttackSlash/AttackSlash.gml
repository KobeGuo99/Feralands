
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