// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function varReset()
{
	// ROCKS
	global.bigRockHealth = 300;
	global.smallRockHealth = 100;
	global.rockSpeed = 1;
	global.smallRockSpeed = 1.5;
	global.rockSpawnAmount = 3;
	global.bigRockXp = 100;
	global.smallRockXp = 25;
	global.maxRockLimit = 12;
	
	// BULLETS
	global.bulletDamage = 100;
	global.bulletTime = 0.5;
	global.bulletSpeed = 10;
	global.bulletAmount = 1;
	global.bulletAngle = 0;
	global.bulletSize = 2;

	// PLAYER  /  FLAGS
	global.playerSpeed = 3;
	global.persistenceReset = false;
	global.applyChanges = true;
	global.playerReroll = 1;
	global.playerLevels = 0;
	global.playerLevelScaling = 1.10;
}

varReset();

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