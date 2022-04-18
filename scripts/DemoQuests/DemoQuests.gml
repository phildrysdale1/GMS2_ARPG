function ActivateHatCat()
{
	var _hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHat); // first check is to avoid error when searching for object
	switch (global.questStatus[? "TheHatQuest"])
	{
		case 0: // not started
		{
			// player might have brought the hat back anyway
			if (_hasHat)
			{
				//complete quest
				NewTextBox("Wow, you found my hat without me even asking!",2);
				NewTextBox("You are a true hero indeed!",2);
				global.questStatus[? "TheHatQuest"] = 2
				with (oQuestNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				PlayerDropItem();
			}
			else
			{
				//offer quest
				NewTextBox("Hello there! You look like a brave adventurer. What with the cape and all.",2);
				NewTextBox("Could you help me find my missing hat?",2, 
				["4: Of course!", "5: This task is beneath me"]);
				
			}
		} break;
		
		case 1: // quest in progress
		{
			if (_hasHat)
			{
				//complete quest
				NewTextBox("Wow, you found my hat!",2);
				NewTextBox("You are a true hero indeed!",2);
				global.questStatus[? "TheHatQuest"] = 2
				with (oQuestNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				PlayerDropItem();
				
			}
			else
			{
				//clue reminder
				NewTextBox("I think I left my hat in the scary cave to the north-east.",2);
				NewTextBox("You might need some items to get there.",2);
				
			}
		} break;
		
		case 2: //quest already completed
		{
				//thanks again
				NewTextBox("Thanks so much, I look so great in my hat!",2);
		} break;
	}
}
			

function ActivateKaren()
{
	switch (global.questStatus[? "TimmyQuest"])
	{
		
		case 0: // intial hello
		{
			//this section is not setup
			NewTextBox("Hello there, I'm Karen, how are you?", 2,
			["10: Fine, and you", 
			"11: None of your damn business", 
			"12: What the gossip about town?"]);
		} break;
		
		case 1: // quest in progress - reward money 100g
		{
			NewTextBox("Hello there, I'm Karen, how are you?", 2,
			["10: Fine, and you", 
			"11: None of your damn business", 
			"12: What the gossip about town?"]);
			
		} break;
		
		case 2: //quest in progress - reward sword 1.5x damage
		{
				//thanks again
			
		} break;
		
		default: show_debug_message("its fucked");break;
	}
}




