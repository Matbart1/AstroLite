/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fntBigGameText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Room width in game is 0.50 MaX, use this to split properly 
var multCalc = (currentPoints / pointsForLevel) * 100;

draw_healthbar(room_width * 0.20, 4, room_width * 0.30, 22, multCalc,
c_black, #523d3d, #fcf403, 0, true, true)

draw_text_transformed(room_width * 0.25, 13,
string_format(pointsForLevel - currentPoints, 0, 0),
0.5, 0.5, 0);

draw_text_transformed(room_width * 0.40, 12, $"Current Level:", 0.5, 0.5, 0);
draw_set_color(#03ff89)
draw_text_transformed(room_width * 0.445, 13, global.currentLevel, 0.5, 0.5, 0);

var stopWatch = string_replace_all(
string_format(hour, 2, 0) + ":" + 
string_format(minute, 2, 0) + ":" + 
string_format(second, 2, 0), " ", "0");

draw_text_transformed(room_width * 0.25, 40, stopWatch, 0.5, 0.5, 0);

draw_set_alpha(global.warningOpacity);
draw_text_transformed(room_width * 0.25, 350, warningText, 0.5, 0.5, 0);
draw_set_alpha(1);

global.warningOpacity -= 0.007;




