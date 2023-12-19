/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

hitList = [
ASTEROIDblam1,
ASTEROIDblam2,
ASTEROIDblam3,
];

healthPoints--;

if(healthPoints == 0)
{
	// dead!
	healthPoints = 1;
	
	tempHitList = array_shuffle(hitList);

	audio_play_sound(tempHitList[0], 1, false)

	effect_create_above(ef_explosion, x, y, 1, c_white);

	direction = random(360);

	if sprite_index == spr_rock_big
	{
		instance_create(x, y, );
	}
	else if instance_number(obj_rock) < 12
	{
	        sprite_index = spr_rock_big;
	        x = -100;
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
	dentList = [
	ASTEROIDdent1,
	ASTEROIDdent2,
	ASTEROIDdent3,
	ASTEROIDdent4
	];
	
	tempDent = array_shuffle(dentList);

	audio_play_sound(tempDent[0], 1, false)
}
