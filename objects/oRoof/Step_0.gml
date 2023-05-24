if(position_meeting(oPlayer.x + 5, oPlayer.y, id) || position_meeting(oPlayer.x - 5, oPlayer.y, id)){
	image_alpha = max(image_alpha - 0.04, 0.25);
} else {
	image_alpha = min(image_alpha + 0.04, 1);	
}
