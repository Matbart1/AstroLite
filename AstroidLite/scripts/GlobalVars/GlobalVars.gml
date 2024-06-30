// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function varReset()
{
	// ROCKS
	global.bigRockHealth = 300;
	global.smallRockHealth = 100;
	global.rockSpeed = 1;
	global.smallRockSpeed = 1.5;
	global.rockSpawnamount = 3;
	global.bigRockXp = 100;
	global.smallRockXp = 25;
	global.maxRockLimit = 12;
	
	// BULLETS
	global.bulletDamage = 100;
	global.bulletTime = 0.5;
	global.bulletSpeed = 10;
	global.bulletAmount = 1;
	global.tailGunAmount = 0;
	global.bulletAngle = 0;
	global.bulletSize = 2;
	global.bulletRicochet = 0;
	global.bulletPenetrate = 0;

	// PLaYER  /  FLaGS
	global.playerSpeed = 3;
	global.persistenceReset = false;
	global.applyChanges = true;
	global.playerReroll = 1;
	global.Progression = 0;
	global.currentLevel = 0;
	global.acaling = 1.10;
	global.warningOpacity = 0;
}

varReset();

function pitchaudio(audioToPitch)
{
	var pitch = random_range(0.9, 1.3);
	audio_sound_pitch(audioToPitch, pitch);
	return audioToPitch;
}
global.audioTracks = 
[
	gamePlay1,
	gameplay2,
	gamePlay3,
	gamePlay4,
	gamePlay5,
	gamePlay6,
	gamePlay7,
	gamePlay8,
	gamePlay9,
	gamePlay10
]

// New sprite progression for levels
// New character with permanent out of game bonuses
// Headhunter enemy % 3 minutes

// display level
// display total score