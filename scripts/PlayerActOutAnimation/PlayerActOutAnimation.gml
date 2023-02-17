/// @desc PlayerActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript

//Carry out an animation and optionally carry out a script when animation ends
function PlayerActOutAnimation(sprite, endScript = -1){
	state = PlayerStateAct;
	sprite_index = sprite;
	animationEndScript = endScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}