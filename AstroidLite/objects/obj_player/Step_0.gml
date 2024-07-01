/// @description Constantly loops
// You can write your code in this editor
	if (instance_exists(obj_player)) {
	curSpeed = global.bulletTime;
	move_wrap(true, true, 0)
	
	// acceptable, probably rework later
	if x +3 <= mouse_x or x-3 >= mouse_x
		if y+3 <= mouse_y or y-3 >= mouse_y
			image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	direction = image_angle;
	
	if global.applyChanges
	{
		speed = global.playerSpeed;
		global.applyChanges = false;
	}
	
	
	// should constantly maintain a straight forward angle
	global.bulletAngle = image_angle;

	if mouse_check_button_pressed(mb_right)
		speed = global.playerSpeed * 2;	
		
	if mouse_check_button_released(mb_right)
		speed = global.playerSpeed;	
}
