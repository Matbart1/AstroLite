/// @description Main functionality
// You can write your code in this editor
// check each loop if music is playing
#region Main Functionality
if(global.persistenceReset == true)
{
	audio_stop_all();
	audio_play_sound(mainMenu, 0, true);
	room_persistent = false;
	global.persistenceReset = false;
	room_goto(MainMenu);
}
else
{
	if(!audio_is_playing(tempAudio[current_track_index]))
	{
		if (current_track_index < array_length(tempAudio) - 1) {
		    // If there are more tracks in the playlist, move to the next track
		    current_track_index += 1;
			audio_stop_all();
		    audio_play_sound(tempAudio[current_track_index], 1, false);
		}
		else
		{
		    // If it's the last track, you can choose to loop or stop playing
		    // For example, to loop back to the first track:
		    current_track_index = 0;
			audio_stop_all();
		    audio_play_sound(tempAudio[current_track_index], 1, false);
		}
	}

	// Level up reaches
	if(currentPoints >= pointsForLevel)
	{
		if instance_exists(obj_player)
		{
			global.playerLevels += 1;
			global.playerProgression += 1;
			
			switch global.playerProgression
			{
				case 15:
				obj_player.sprite_index = spr_player_15;
				break;
				
				case 30:
				obj_player.sprite_index = spr_player_30;
				break;
				
				case 45:
				obj_player.sprite_index = spr_player_45;
				break;
			}
			
			audio_play_sound(ASTEROIDupgrade1, 1, false);
			
			room_persistent = true;
			
			// Screenshot game screen to allow player to see where they are paused
			global.img = sprite_create_from_surface(application_surface, 0, 0, 2048, 1440, false, true, 0, 0) 
			global.playerReroll = 1;
			
			room_goto(UpgradeScreen);
			
			// Increase experience required for next level
			currentPoints = 0;
			pointsForLevel = (pointsForLevel * global.playerLevelScaling);
			
			// Every 15 levels, reduce the overall xp required by 1% (starts at 10%)
			// at level 150, the amount of xp to level up will always be the same
			if global.playerLevels > 15
			{
				global.playerLevels = 0;
				global.playerLevelScaling -= 0.01;
			}
		}
	}

	if keyboard_check_released(vk_escape)
	{
		room_persistent = true;
		global.img = sprite_create_from_surface(application_surface, 0, 0, 2048, 1440, false, true, 0, 0) 
		room_goto(PauseScreen);
	}
}
#endregion

#region Game Scaling
// Custom stopwatch functionality
stepTimer += 1;

if stepTimer >= gameTime
{
	second += 1;
	stepTimer -= gameTime
}

if second >= 60
{
	minute += 1;
	second -= 60;
	if singleUpgradeLimit == 1 // minute reached, lets make the game much more difficult
	{
		warningText = "The Galaxy Enrages...";
		global.warningOpacity = 1;
		singleUpgradeLimit = 0;
		// buff everything
		global.maxRockLimit += 1;
		global.rockSpawnAmount += 1;
		global.smallRockSpeed += 0.3;
		global.rockSpeed += 0.3; 
		global.bigRockHealth += 25;
		global.smallRockHealth += 15;
		global.smallRockXp = (75 / global.rockSpawnAmount);
	}
	
	var randomRoll = irandom(100);
	
	if randomRoll >= 75
	{
		headHunterSpawn();
	}
}

if minute >= 60
{
	hour += 1;
	minute -= 60;
}

if second == 30 && singleUpgradeLimit == 1 // half a minute reached, lets make the game more difficult
{
	singleUpgradeLimit = 0;
	var randomDifficultyIncrease = irandom(3);
	warningText = "The Galaxy Grows Stronger...";
	global.warningOpacity = 1;
	switch randomDifficultyIncrease
	{
		// KEEP INTO ACCOUNT THE FRACTIONAL DIFFERENCES FROM BUFFS *?
		
		case 0: //big enemy speed
		global.rockSpeed += 0.3; 
		break;
		
		case 1: //big enemy health
		global.bigRockHealth += 25;
		break;
		
		case 2: //max enemy amount
		global.maxRockLimit += 1;
		break;
		
		case 3: //small rock speed
		global.smallRockSpeed += 0.3;
		break;
		
		case 4: //small rock health
	    global.smallRockHealth += 15;
		break;
	}	
	
	var randomRoll = irandom(100);
	
	if randomRoll >= 75
	{
		headHunterSpawn();
	}
}

if second == 31
	singleUpgradeLimit = 1;

if second == 0
	singleUpgradeLimit = 1;

#endregion

function headHunterSpawn()
{
	var currentSpawn = irandom(1)
		var tempLocX = array_shuffle(locationListX);
		var tempLocY = array_shuffle(locationListY);
		// This will place newly spawned rocks all around the edges of the game
		// screen, hidden away from view on the inital spawn
		if currentSpawn == 0
		{
			var randomY = irandom(room_height*0.50)
			instance_create_depth(tempLocX[0], randomY, 0, obj_headHunter);
		}
		
		else if currentSpawn == 1
		{
			var randomX = irandom(room_width*0.50)
			instance_create_depth(randomX, tempLocY[0], 0, obj_headHunter);
		}
		obj_headHunter.image_xscale = 1.5;
		obj_headHunter.image_yscale = 1.5;
}