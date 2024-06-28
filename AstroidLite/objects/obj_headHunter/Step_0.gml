/// @description Rock wrapping
// You can write your code in this editor

move_wrap(true, true, 100);
speed = global.smallRockSpeed;

if instance_exists(obj_player)
{
	var instance = instance_nearest(x, y, obj_player)
	//direction = instance;
	move_towards_point(instance.x, instance.y, global.smallRockSpeed);
}

image_angle += 1.5;

stepTimer += 1;

if stepTimer >= gameTime
{
	second += 1;
	stepTimer -= gameTime
}

if second >= 60
{
	effect_create_above(ef_ring, x, y, 100, c_green);
	obj_game.singleSpawnLimit = 1;
	instance_destroy();
}