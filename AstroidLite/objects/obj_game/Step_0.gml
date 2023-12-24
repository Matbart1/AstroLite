/// @description Insert description here
// You can write your code in this editor
// check each loop if music is playing
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
		} else {
		    // If it's the last track, you can choose to loop or stop playing
		    // For example, to loop back to the first track:
		    current_track_index = 0;
			audio_stop_all();
		    audio_play_sound(tempAudio[current_track_index], 1, false);
		}
	}

	// level up mechanic goes here
	if(points >= levelPoints)
	{
		levelPoints = (levelPoints * 1.10) + 100;
	}

	if keyboard_check_pressed(vk_escape)
	{
		room_persistent = true;
		global.img = sprite_create_from_surface(application_surface, 0, 0, 2048, 1440, false, true, 0, 0) 
		room_goto(PauseScreen);
	}
}



