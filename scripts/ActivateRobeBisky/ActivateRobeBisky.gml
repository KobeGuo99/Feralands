// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateRobeBisky(){
	var _hasRobe = (global.iLifted != noone) && (global.iLifted.object_index == oRobe);
    switch (global.questStatus[? "TheRobeQuest"])
    {
        case 0: //not started
        {
            //player might have brought the hat back anyway
            if (_hasRobe)
            {
                //complete quest
				NewTextBox("Whoa, where'd did you find my robe?\nI couldn't find it for forever", 2);
				NewTextBox("Thanks a bunch!", 2);
				global.questStatus[? "TheRobeQuest"] = 2;
				with(oQuestNPC) sprite_index = sBiskyRobe;
				with(oRobe) instance_destroy();
				PlayerDropItem();
            }
            else
            {
                //offer quest
				NewTextBox("Well, well, well, another adventurer looking for a quest.", 2);
				NewTextBox("Are you sure you're ready for this one? I mean, \nI've seen bards with more muscle than you.", 2);
				NewTextBox("Well, you could first get me my missing robe.\nDo you think you can handle that?", 2, 
					["4: Of course! I'm the best!", "5:No thank you, I'm a wuss."]);
                
            }
            
        }break;
        
        case 1: //quest in progress
        {
            if (_hasRobe)
            {
                //complete quest
				NewTextBox("Wow, looks like you're tougher than a bard after all.", 2);
				NewTextBox("Thanks a bunch", 2);
				global.questStatus[? "TheRobeQuest"] = 2;
				with(oQuestNPC) sprite_index = sBiskyRobe;
				with(oRobe) instance_destroy();
				global.iLifted = noone;
				with (oPlayer){
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
            }
            else
            {
                //clue reminder
				NewTextBox("I think I left my robe in the caves.", 2);
				NewTextBox("You might need some items to get there!", 2);
            }
            
        }break;
        case 2: //quest already completed
        {
            NewTextBox("Thanks again for my robe!", 2);
        } break;
    }
}