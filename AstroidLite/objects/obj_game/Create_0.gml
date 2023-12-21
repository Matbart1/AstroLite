/// @description On game start
// You can write your code in this editor
current_track_index = 0;
points = 0;

audioTracks = 
[
	gamePlay1,
	gameplay2,
	gamePlay3,
	gamePlay4,
	gamePlay5
]

tempAudio = array_shuffle(audioTracks);

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