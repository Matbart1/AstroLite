/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

healthPoints-=global.bulletDamage;
effect_create_above(ef_smoke, x, y, 1, c_dkgrey);

if(healthPoints <= 0)
{
	// dead!
	var tempHitList = array_shuffle(hitList);
	audio_play_sound(tempHitList[0], 1, false)

	effect_create_above(ef_explosion, x, y, 1, c_white);

	direction = random(360);

	instance_destroy();

	obj_game.currentPoints += global.smallRockXp;
}
else
{
	// Not Dead!
	var tempDent = array_shuffle(dentList);

	audio_play_sound(tempDent[0], 1, false)
}
