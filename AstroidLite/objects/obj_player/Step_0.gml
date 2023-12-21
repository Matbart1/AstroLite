/// @description Constantly loops
// You can write your code in this editor
bulletPress = false;
if (instance_exists(obj_player)) {
	move_wrap(true, true, 0)
	
    // The object exists, perform actions here
	if keyboard_check(vk_space)
	{
	        pDirection = 0;
			UpdateMotion()
	}
	
	if keyboard_check(ord("W"))
	{
	        pDirection = 1;
			UpdateMotion()
	}

	if keyboard_check(ord("S"))
	{
	        pDirection = 2;
			UpdateMotion()
	}

	if keyboard_check(ord("A"))
	{
	        image_angle += 4;
			UpdateMotion()
	 }

	if keyboard_check(ord("D"))
	{
	        image_angle -= 4;
			UpdateMotion()
	}

	if mouse_check_button_pressed(mb_left)
	{
		bulletPress = true;
	}
	

	function UpdateMotion()
	{
		if(pDirection == 1)
			motion_set(image_angle, 5);
		if(pDirection == 2)
			motion_set(image_angle, -5);
		if(pDirection == 0)
			motion_set(image_angle, 0);
	}
	
	if(bulletPress == true)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		
	}
	
	
}

//
//	Game crashes on key input when player is defeated
//

