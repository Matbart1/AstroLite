/// @description Constantly loops
// You can write your code in this editor
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
	
	function UpdateMotion()
	{
		if(pDirection == 1)
			motion_set(image_angle, 5);
		if(pDirection == 0)
			motion_set(image_angle, 0);
	}
	
}

//
//	Game crashes on key input when player is defeated
//

