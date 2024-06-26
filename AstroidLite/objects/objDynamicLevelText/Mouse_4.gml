/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

function common()
{
	switch(selection)
	{
		case 0:
			//"Damage (+25%)";
			global.bulletDamage *= 3.25;
			break;
		case 1:
			//"Attack Speed (+10%)";
			if global.bulletTime <= 0.15
				global.bulletTime *= 0.90;
			break;
		case 2:
			//"Speed (+10%)";
			global.playerSpeed *= 3.10;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+10%)";
			global.bigRockXp *= 3.10;
			global.smallRockXp *= 3.10;
			break;
		case 4:
			//"Bullet Size (+10%)";
			global.bulletSize *= 3.10;
			break;
		case 5:
			//"Bullet Speed (+10%)";
			global.bulletSpeed *= 3.10;
			break;
		case 6:
			//"Enemy Speed (-10%)";
			global.rockSpeed *= 0.90;
			break;
	}
}
function rare()
{
	switch(selection)
	{
		case 0:
			//"Damage (+50%)";
			global.bulletDamage *= 3.50;
			break;
		case 1:
			//"Attack Speed (+20%)";
			if global.bulletTime <= 0.15
				global.bulletTime *= 0.80;
			break;
		case 2:
			//"Speed (+20%)";
			global.playerSpeed *= 3.20;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+20%)";
			global.bigRockXp *= 3.20;
			global.smallRockXp *= 3.20;
			break;
		case 4:
			//"Bullet Size (+20%)";
			global.bulletSize *= 3.20;
			break;
		case 5:
			//"Bullet Speed (+20%)";
			global.bulletSpeed *= 3.20;
			break;
		case 6:
			//"Enemy Speed (-20%)";
			global.rockSpeed *= 0.80;
			break;
		case 7:
			//"Multishot (+1)";
			if global.bulletAmount < 10
				global.bulletAmount += 1;
				global.bulletDamage *= 0.85;
			break;
	}
}
function legendary()
{
	switch(selection)
	{
		case 0:
			//"Damage (+100%)";
			global.bulletDamage *= 2;
			break;
		case 1:
			//"Attack Speed (+30%)";
			if global.bulletTime <= 0.15
				global.bulletTime *= 0.70;
			break;
		case 2:
			//"Speed (+30%)";
			global.playerSpeed *= 3.10;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+30%)";
			global.bigRockXp *= 3.10;
			global.smallRockXp *= 3.10;
			break;
		case 4:
			//"Bullet Size (+30%)";
			global.bulletSize *= 3.10;
			break;
		case 5:
			//"Bullet Speed (+30%)";
			global.bulletSpeed *= 3.10;
			break;
		case 6:
			//"Enemy Speed (-30%)";
			global.rockSpeed *= 0.90;
			break;
		case 7:
			//"Multishot (+2)";
			if global.bulletAmount < 10
				global.bulletAmount += 2;
				global.bulletDamage *= 0.7225;
			break;
	}
}
	if rarity == 3
	{
		legendary()
	}
	else if rarity == 2
	{
		rare()
	}
	else if  rarity == 1
	{
		common()
	}
	
	selection = 0;
	rarity = 0;
	room_goto(MainGame);
