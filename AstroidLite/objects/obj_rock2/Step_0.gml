/// @description Rock wrapping
// You can write your code in this editor

move_wrap(true, true, 100);
speed = global.rockSpeed;
image_angle += 1.5;

if healthPoints <= global.bigRockHealth / 2 && sprite_index != spr_rock_big2_hurt
{
	sprite_index = spr_rock_big2_hurt
}