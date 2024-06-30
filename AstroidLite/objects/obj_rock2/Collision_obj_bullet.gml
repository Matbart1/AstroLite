/// @description Rock meets bullet
// You can write your code in this editor

instance_destroy(other);

healthPoints -=	global.bulletDamage;
	
if(healthPoints <= 0)
{
	// dead!
	var tempHitList = array_shuffle(hitList);
	audio_play_sound(pitchaudio(tempHitList[0]), 1, false);
	effect_create_above(ef_explosion, x, y, 1, c_white);
	
	for(var i = 0; i < global.rockSpawnamount; i++)
	{
		instance_create_depth(x, y, 0, obj_smallRock);
	}

	if instance_number(obj_rock) < global.maxRockLimit
	{
		direction = random(360);
		
		var currentSpawn = irandom(1)
		var tempLocX = array_shuffle(locationListX);
		var tempLocY = array_shuffle(locationListY);
		var tempRockList = array_shuffle(rockList);
		
		// This will place newly spawned rocks all around the edges of the game
		// screen, hidden away from view on the inital spawn
		if currentSpawn == 0
		{
			var randomY = irandom(room_height*0.50)
			instance_create_depth(tempLocX[0], randomY, 0, tempRockList[0]);
		}
		
		else if currentSpawn == 1
		{
			var randomX = irandom(room_width*0.50)
			instance_create_depth(randomX, tempLocY[0], 0, tempRockList[0]);
		}
	
		
		instance_destroy();
	}
	else
	{
	     instance_destroy();
	}

	obj_game.currentPoints += global.bigRockXp;
}
else
{
	// Not Dead!
	effect_create_above(ef_smoke, x, y, 15, c_dkgrey);
	var tempDent = array_shuffle(dentList);
	audio_play_sound(pitchaudio(tempDent[0]), 1, false);
}

