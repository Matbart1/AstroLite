/// @description Rock meets bullet
// You can write your code in this editor

instance_destroy(other);

healthPoints -=	global.bulletDamage;
	
if(healthPoints <= 0)
{
	// dead!
	tempHitList = array_shuffle(hitList);
	audio_play_sound(tempHitList[0], 1, false);
	effect_create_above(ef_explosion, x, y, 1, c_white);
	
	for(var i = 0; i < global.rockSpawnAmount; i++)
	{
		instance_create_depth(x, y, 0, obj_smallRock);
	}

	if instance_number(obj_rock) < 12
	{
		direction = random(360);
		tempLocX = array_shuffle(locationListX);
		tempLocY = array_shuffle(locationListY);
		tempRockList = array_shuffle(rockList);
	    instance_create_depth(tempLocX[0], tempLocY[0], 0, tempRockList[0]);
		instance_destroy();
	}
	else
	{
	     instance_destroy();
	}

	obj_game.points += 10;
}
else
{
	// Not Dead!
	effect_create_above(ef_smoke, x, y, 1, c_dkgrey);
	tempDent = array_shuffle(dentList);
	audio_play_sound(tempDent[0], 1, false);
}

