/// @description On game start
// You can write your code in this editor
game_set_speed(60, gamespeed_fps);
current_track_index = 0;
currentPoints = 0;
pointsForLevel = 300;


randomize();
tempaudio = array_shuffle(global.audioTracks);

gameTime = game_get_speed(gamespeed_fps);
stepTimer = 0;
second = 0;
minute = 0;
hour = 0;

singleUpgradeLimit = 1;

warningText = "The galaxy grows stronger...";
headhunterText = "The Headhunter has tracked your coordinates."

locationListX = [
-100,
room_width + 100
];

locationListY = [
-100,
room_height + 100
];

galaxyText = [ // random(11)
	"The galaxy enrages.",
	"The universe grows angry.",
	"The cosmos awakens.",
	"The void intensifies.",
	"The stars conspire.",
	"The universe sharpens its claws.",
	"The darkness deepens.",
	"The nebulae pulse with power.",
	"The celestial forces rally.",
	"The ether grows hostile.",
	"The astral tides surge.",
	"The cosmos stirs with menace."
];
