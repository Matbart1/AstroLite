/// @description Insert description here
// You can write your code in this editor

	randomUpgrade = irandom(4);

	text = "";

	switch(randomUpgrade)
	{
		case 0:
			text = "Damage (+25%)";
			break;
		case 1:
			text = "Attack Speed (+25%)";	
			break;
		case 2:
			text = "Multishot (+1)";
			break;
		case 3:
			text = "Speed (+100%)";
			break;
		case 4:
			text = "Experience (+10%)";
			break;
	}
