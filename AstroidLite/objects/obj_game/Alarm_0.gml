/// @description Fires when the instance of player is destroyed
// You can write your code in this editor

// loop the game again
audio_stop_all();
audio_play_sound(mainMenu, 0, true);
room_goto(MainMenu); // Make this return to main menu..