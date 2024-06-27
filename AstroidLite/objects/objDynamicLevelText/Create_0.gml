rarity = 0;
selection = 0;
// FIX THE RANDOM SHIT
function upgradeFncLegendary()
{
	selection = irandom(7);	
	
	switch(selection)
	{
		case 0:
			text = "Damage (+100%)";
			break;
		case 1:
			text = "Attack Speed (+40%)";	
			break;
		case 2:
			text = "Speed (+40%)";
			break;
		case 3:
			text = "Experience (+40%)";
			break;
		case 4:
			text = "Bullet Size (+40%)";
			break;
		case 5:
			text = "Bullet Speed (+40%)";
			break;
		case 6:
			text = "Enemy Speeds (-30%)";
			break;
		case 7:
			if global.bulletAmount < 10
				text = "Multishot (+2)";	
			else
				upgradeFnc();
			break;
	}
}

function upgradeFncRare()
{
	selection = irandom(7);	
	
	switch(selection)
	{
		case 0:
			text = "Damage (+50%)";
			break;
		case 1:
			text = "Attack Speed (+20%)";	
			break;
		case 2:
			text = "Speed (+20%)";
			break;
		case 3:
			text = "Experience (+20%)";
			break;
		case 4:
			text = "Bullet Size (+20%)";
			break;
		case 5:
			text = "Bullet Speed (+20%)";
			break;
		case 6:
			text = "Enemy Speeds (-20%)";
			break;
		case 7:
			if global.bulletAmount < 10
				text = "Multishot (+1)";	
			else
				upgradeFnc();
			break;
	}
}

function upgradeFncCommon()
{
	selection = irandom(6);

	switch(selection)
	{
		case 0:
			text = "Damage (+25%)";
			break;
		case 1:
			text = "Attack Speed (+10%)";	
			break;
		case 2:
			text = "Speed (+10%)";
			break;
		case 3:
			text = "Experience (+10%)";
			break;
		case 4:
			text = "Bullet Size (+10%)";
			break;
		case 5:
			text = "Bullet Speed (+10%)";
			break;
		case 6:
			text = "Enemy Speeds (-10%)";
			break;
	}
}
	
	text = "";
	
	ranVal = irandom(100);
	
	if ranVal >= 98
	{
		rarity = 3;
		sprite_index = LevelLegendary;
		upgradeFncLegendary();
	}
	else if ranVal >= 90 && ranVal < 98
	{
		rarity = 2;	
		sprite_index = LevelRare;
		upgradeFncRare();
	}
	else if ranVal < 90
	{
		rarity = 1;	
		sprite_index = LevelCommon;
		upgradeFncCommon();
	}
	else
		game_end(5);
	
	/*
	UPGRADE IDEAS LOL
	legendary- program new gun, rocket? maybe shrapnel? laser?
	legendary- saving grace - bubble shield lol (1 use)
	*/

