/// @desc Initialize & Globals
randomize(); //adds rng to game

global.gameSaveSlot = 0;

global.gamePaused = false;
global.textSpeed = 0.75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.iLifted = noone;
global.playerHealthMax = 5;
global.playerHealth = global.playerHealthMax;
global.playerMoney = 0;

//Items
global.playerHasAnyItems = false;
global.playerEquipped = ITEM.BOMB;
global.playerAmmo = array_create(ITEM.TYPE_COUNT, -1);
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerAmmo[ITEM.BOMB] = 0;
global.playerAmmo[ITEM.BOW] = 0;

//temp for testing
//global.playerItemUnlocked[ITEM.BOMB] = true;
//global.playerHasAnyItems = true;
//global.playerAmmo[ITEM.BOMB] = 5;
//global.playerItemUnlocked[ITEM.BOW] = true;
//global.playerAmmo[ITEM.BOW] = 15;
//global.playerItemUnlocked[ITEM.HOOK] = true;



global.questStatus = ds_map_create();
global.questStatus[? "TheRobeQuest"] = 0;

global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

global.boulderDestroyed = false;


surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START);
