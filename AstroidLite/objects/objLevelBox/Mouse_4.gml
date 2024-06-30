/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

function common()
{
	switch(selection)
	{
		case 0:
			//"Damage (+10%)";
			global.bulletDamage += 10;
			break;
		case 1:
			//"Attack Speed (+5%)";
			if global.bulletTime - 0.05 >= 0.10
				global.bulletTime -= 0.0125;
			else 
				global.bulletTime = 0.10;
			break;
		case 2:
			//"Speed (+5%)";
			global.playerSpeed += 0.15;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+10%)";
			global.bigRockXp += 10;
			global.smallRockXp += 2.5;
			break;
		case 4:
			//"Bullet Size (+10%)";
			global.bulletSize += 0.2;
			break;
		case 5:
			//"Bullet Speed (+5%)";
			global.bulletSpeed += 1;
			break;
		case 6:
			//"Enemy Speed (-10%)";
			global.rockSpeed -= 0.10;
			global.smallRockSpeed -= 0.10;
			break;
	}
}
function rare()
{
	switch(selection)
	{
		case 0:
			//"Damage (+25%)";
			global.bulletDamage += 25;
			break;
		case 1:
			//"Attack Speed (+10%)";
			if global.bulletTime - 0.05 >= 0.10
				global.bulletTime -= 0.025;
			else global.bulletTime = 0.10;
		case 2:
			//"Speed (+10%)";
			global.playerSpeed += 0.3;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+20%)";
			global.bigRockXp += 20;
			global.smallRockXp += 5;
			break;
		case 4:
			//"Bullet Size (+20%)";
			global.bulletSize += 0.4;
			break;
		case 5:
			//"Bullet Speed (+10%)";
			global.bulletSpeed += 1;
			break;
		case 6:
			//"Enemy Speed (-20%)";
			global.rockSpeed -= 0.2;
			global.smallRockSpeed -= 0.2;
			break;
		case 7:
			//"Multishot (+1)";
			if global.bulletAmount < 10
				global.bulletAmount += 1;
				global.bulletDamage *= 0.90;
			break;
		case 8:
			//"Tailgun (+1)";
			if global.tailGunAmount < 10
				global.tailGunAmount += 1;
				global.bulletDamage *= 0.90;
			break;
	}
}
function legendary()
{
	switch(selection)
	{
		case 0:
			//"Damage (+50%)";
			global.bulletDamage += 50;
			break;
		case 1:
			//"Attack Speed (+20%)";
			if (global.bulletTime - 0.05) >= 0.10
				global.bulletTime -= 0.05;
			else global.bulletTime = 0.10;
			break;
		case 2:
			//"Speed (+15%)";
			global.playerSpeed += 0.45;
			global.applyChanges = true;
			break;
		case 3:
			//"Experience (+30%)";
			global.bigRockXp += 30;
			global.smallRockXp += 7.5;
			break;
		case 4:
			//"Bullet Size (+30%)";
			global.bulletSize += 0.6;
			break;
		case 5:
			//"Bullet Speed (+15%)";
			global.bulletSpeed += 1.5;
			break;
		case 6:
			//"Enemy Speed (-30%)";
			global.rockSpeed -= 0.30;
			global.smallRockSpeed -= 0.30;
			break;
		case 7:
			//"Multishot (+2)";
			if global.bulletAmount < 10
				global.bulletAmount += 2;
				global.bulletDamage *= 0.81;
			break;
		case 8:
			//"Tailgun (+2)";
			if global.tailGunAmount < 10
				global.tailGunAmount += 2;
				global.bulletDamage *= 0.81;
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
