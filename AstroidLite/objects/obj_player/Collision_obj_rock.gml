/// @description Death Condition
// You can write your code in this editor
room_persistent = false;
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;

audio_play_sound(tempDeathList[0], 1, false)

global.bigRockHealth = 300;
global.smallRockHealth = 100;
global.rockSpeed = 1;
global.rockSpawnAmount = 3;
global.bulletDamage = 100;
global.bulletTime = 0.5;
global.persistenceReset = false;
global.playerSpeed = 3;
global.bigRockXp = 100;
global.smallRockXp = 25;
global.bulletAmount = 1;
global.bulletAngle = 0;
global.bulletSize = 1;