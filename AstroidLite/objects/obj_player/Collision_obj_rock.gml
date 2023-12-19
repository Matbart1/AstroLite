/// @description Death Condition
// You can write your code in this editor

effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;

deathList = [
ASTEROIDdeath1,
ASTEROIDdeath2,
ASTEROIDdeath3,
];

tempDeathList = array_shuffle(deathList);

audio_play_sound(tempDeathList[0], 1, false)