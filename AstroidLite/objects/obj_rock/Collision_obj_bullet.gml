/// @description Rock meets bullet
// You can write your code in this editor

instance_destroy(other);

hitList = [
ASTEROIDblam1,
ASTEROIDblam2,
ASTEROIDblam3,
];

healthPoints--;

	effect_create_above(ef_smoke, x, y, 1, c_dkgrey);
	
if(healthPoints == 0)
{
	// dead!
	
	tempHitList = array_shuffle(hitList);

	audio_play_sound(tempHitList[0], 1, false)

	effect_create_above(ef_explosion, x, y, 1, c_white);

	direction = random(360);


	instance_create(x, y, obj_smallRock);

	if instance_number(obj_rock) > 12
	{
			instance_destroy();

	}
	else if instance_number(obj_rock) < 12
	{
			x = -100;
	}

	obj_game.points += 10;
}
else
{
	// Not Dead!
	dentList = [
	ASTEROIDdent1,
	ASTEROIDdent2,
	ASTEROIDdent3,
	ASTEROIDdent4
	];
	
	tempDent = array_shuffle(dentList);

	audio_play_sound(tempDent[0], 1, false)
}


