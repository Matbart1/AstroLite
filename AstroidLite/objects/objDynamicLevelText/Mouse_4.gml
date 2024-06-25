/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
var playerInstance = obj_player;

	switch(randomUpgrade)
	{
		case 0:
			//"Damage (+25%)";
			global.bulletDamage *= 1.25;
			break;
		case 1:
			//"Attack Speed (+25%)";
			if global.bulletTime <= 0.15
				global.bulletTime *= 0.75;
			break;
		case 2:
			//"Multishot (+1)";
			global.bulletAmount += 1;
			break;
		case 3:
			//"Speed (+10%)";
			global.playerSpeed *= 1.10;
			global.applyChanges = true;
			break;
		case 4:
			//"Experience (+10%)";
			global.bigRockXp *= 1.10;
			global.smallRockXp *= 1.10;
			break;
	}
	if instance_exists(playerInstance)
		playerInstance.speed = global.playerSpeed
		
room_goto(MainGame);
