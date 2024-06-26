/// @description Death Condition
// You can write your code in this editor
room_persistent = false;
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;

tempDeathList = array_shuffle(deathList);

audio_play_sound(tempDeathList[0], 1, false)

varReset();


