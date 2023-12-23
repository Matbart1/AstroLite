/// @description Insert description here
// You can write your code in this editor
// check each loop if music is playing
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

if keyboard_check(vk_tab)
{
instance_deactivate_all(true);	
}
	
if keyboard_check(vk_backspace)
{
instance_activate_all();	
}




