/// @description On game start
// You can write your code in this editor
game_set_speed(60, gamespeed_fps);
current_track_index = 0;
currentPoints = 0;
pointsForLevel = 300;


randomize();
tempAudio = array_shuffle(global.audioTracks);

gameTime = game_get_speed(gamespeed_fps);
stepTimer = 0;
second = 0;
minute = 0;
hour = 0;

singleUpgradeLimit = 1;

warningText = "The Galaxy Grows Stronger...";

locationListX = [
-100,
room_width + 100
];

locationListY = [
-100,
room_height + 100
];
