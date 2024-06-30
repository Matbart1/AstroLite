/// @description Insert description here
// You can write your code in this editor


alarm[0] = game_get_speed(gamespeed_fps) * curSpeed;
// somehow gotta figure out how to manipulate bullet angle 
// from here
switch global.bulletAmount
{
	case 1:
	// straight
	instance_create_layer(x, y, "Instances", obj_bullet);
	break;
	
	case 2:
	global.bulletAngle -= 5
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 10
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 5;
	break;
	
	case 3:
	global.bulletAngle -= 20
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 20
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 20
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 20;
	break;
	
	case 4:
	global.bulletAngle -= 30
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 10
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 30;
	break;
	
	case 5:
	// -45* -22.5* 0 22.5* 45*
	global.bulletAngle -= 30;
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 18;
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 18;
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 30;
	break;
	
	case 6:
	global.bulletAngle -= 30
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 30;
	break;
	
	case 7:
	// -45* -30* -15* 0* 15* 30* 45* 
	global.bulletAngle -= 45
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 15
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 45;
	break;
	
	case 8:
	// -45* -33.75* -22.5* -11.25* 11.25* 22.5* 33.75* 45*
	global.bulletAngle -= 45
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 12.8
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle = 0;
	break;
	
	case 9:
	// -45* -33.75* -22.5* -11.25* 0* 11.25* 22.5* 33.75* 45*
	global.bulletAngle -= 45
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle += 11.25
	instance_create_layer(x, y, "Instances", obj_bullet);
	global.bulletAngle -= 45;
	break;
	
	case 10:
	for (var i = 0; i < 360; i += 10)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 10;
	}
	
	case 11:
	for (var i = 0; i < 360; i += 10)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 10;
	}
	
	
	break;
}

global.bulletAngle -= 180;
/*
switch global.tailGunAmount
{
	case 1:
		// straight
		instance_create_layer(x, y, "Instances", obj_bullet);
		break;
	
	case 2:
		global.bulletAngle -= 5
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 10
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 5;
		break;
	
	case 3:
		global.bulletAngle -= 20
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 20
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 20
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 20;
		break;
	
	case 4:
		global.bulletAngle -= 30
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 10
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 30;
		break;
	
	case 5:
		// -45* -22.5* 0 22.5* 45*
		global.bulletAngle -= 30;
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 18;
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 18;
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 30;
		break;
	
	case 6:
		global.bulletAngle -= 30
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 30;
		break;
	
	case 7:
		// -45* -30* -15* 0* 15* 30* 45* 
		global.bulletAngle -= 45
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 15
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 45;
		break;
	
	case 8:
		// -45* -33.75* -22.5* -11.25* 11.25* 22.5* 33.75* 45*
		global.bulletAngle -= 45
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 12.8
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle = 0;
	break;
	
	case 9:
		// -45* -33.75* -22.5* -11.25* 0* 11.25* 22.5* 33.75* 45*
		global.bulletAngle -= 45
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle += 11.25
		instance_create_layer(x, y, "Instances", obj_bullet);
		global.bulletAngle -= 45;
		break;
	
	case 10:
		for (var i = 5; i < 360; i += 10)
		{
			instance_create_layer(x, y, "Instances", obj_bullet);
			global.bulletAngle += 10;
		}
		break;
	
	case 11:
		for (var i = 5; i < 360; i += 10)
		{
			instance_create_layer(x, y, "Instances", obj_bullet);
			global.bulletAngle += 10;
		}
		break;	
}
}
*/