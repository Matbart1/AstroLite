/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event

if(instance_exists(objControls))
	instance_destroy(objControls);

else
instance_create_layer(room_width/2 + room_width/4, room_height - 200, "Instances_1", objControls)
