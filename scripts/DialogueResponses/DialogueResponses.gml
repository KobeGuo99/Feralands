// @arg Response
function DialogueResponses(Response){
	switch(Response){
		case 0: break;
		case 1: NewTextBox("You gave response A!", 1); break;
		case 2: NewTextBox("You gave response B! Any further response?", 1, ["3:Yes!", "0:No"]); break;
		case 3: NewTextBox("Thanks for your responses!", 1); break;
		case 4: {
			NewTextBox("I think I left it in the caves.", 2);
			NewTextBox("Good luck, you'll need it.", 2);
			global.questStatus[? "TheRobeQuest"] = 1;
		} break;
		case 5: {
			NewTextBox("I always knew you didn't have it in you.", 2)
		} break;
		case 6: {
			PurchaseItem(activate.item, activate.itemAmount, activate.itemCost); 
		} break;
		default: break;
	}
}