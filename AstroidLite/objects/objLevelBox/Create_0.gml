rarity = 0;
selection = 0;
// FIX THE RaNDOM SHIT
function upgradeFncLegendary()
{
	selection = irandom(8);	
	
	switch(selection)
	{
		case 0:
			text = "+ Damage";
			break;
		case 1:
			text = "+ Attack Speed";	
			break;
		case 2:
			text = "+ Speed";
			break;
		case 3:
			text = "+ Experience";
			break;
		case 4:
			text = "+ Bullet Size";
			break;
		case 5:
			text = "+ Bullet Speed";
			break;
		case 6:
			text = "- Enemy Speeds";
			break;
		case 7:
			if global.bulletAmount < 10
				text = "+ Multishot";	
			else
				upgradeFncLegendary();
			break;
		case 8:
			if global.tailGunAmount < 10
				text = "+ Tailgun";	
			else
				upgradeFncLegendary();
			break;
	}
}

function upgradeFncRare()
{
	selection = irandom(8);	
	
	switch(selection)
	{
		case 0:
			text = "+ Damage";
			break;
		case 1:
			text = "+ Attack Speed";	
			break;
		case 2:
			text = "+ Speed";
			break;
		case 3:
			text = "+ Experience";
			break;
		case 4:
			text = "+ Bullet Size";
			break;
		case 5:
			text = "+ Bullet Speed";
			break;
		case 6:
			text = "- Enemy Speeds";
			break;
		case 7:
			if global.bulletAmount < 10
				text = "+ Multishot";	
			else
				upgradeFncRare();
			break;
		case 8:
			if global.tailGunAmount < 10
				text = "+ Tailgun";	
			else
				upgradeFncRare();
			break;
	}
}

function upgradeFncCommon()
{
	selection = irandom(6);

	switch(selection)
	{
		case 0:
			text = "+ Damage";
			break;
		case 1:
			text = "+ Attack Speed";	
			break;
		case 2:
			text = "+ Speed";
			break;
		case 3:
			text = "+ Experience";
			break;
		case 4:
			text = "+ Bullet Size";
			break;
		case 5:
			text = "+ Bullet Speed";
			break;
		case 6:
			text = "- Enemy Speeds";
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
	UPGRaDE IDEaS LOL
	legendary- program new gun, rocket? maybe shrapnel? laser?
	legendary- saving grace - bubble shield lol (1 use)
	*/

