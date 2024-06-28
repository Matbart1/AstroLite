/// @description Insert description here
// You can write your code in this editor

/// @description On Creation
// You can write your code in this editor
speed = global.smallRockSpeed / 2;
image_angle = random(360);

if instance_exists(obj_player)
	direction = obj_player.image_angle;
else
	direction = image_angle
	
gameTime = game_get_speed(gamespeed_fps);
stepTimer = 0;
second = 0;
	
dentList = [
	ASTEROIDdent1,
	ASTEROIDdent2,
	ASTEROIDdent3,
	ASTEROIDdent4
];

