// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PurchaseItem(_item, _amount, _cost){
	if(global.playerMoney >= _cost){
		global.playerHasAnyItems = true;
		global.playerItemUnlocked[_item] = true;
		global.playerAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		global.playerEquipped = _item;
		instance_destroy(activate);
		
		var _desc = "";
		
		switch(_item) {
			case ITEM.BOW: {
				_desc = "The bow!\nFire with right click to damage enemies!";
			} break;
			
			case ITEM.BOMB: {
				_desc = "The bomb!\nActivate with right click and then throw with spacebar!";
			} break;
			
			case ITEM.HOOK: {
				_desc = "The grappling hook!\nFire with right click to hook items or to hook onto items!";
			} break;
			
			default: _desc = "No item description found!"; break;
			
		}
		NewTextBox(_desc, 1);
		
	} else {
		NewTextBox("Not enough money...", 1);	
	}
}