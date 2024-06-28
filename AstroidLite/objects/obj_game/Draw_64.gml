/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white)
draw_set_font(fntBigGameText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Room width in game is 0.50 MAX, use this to split properly 
var multCalc = (currentPoints / pointsForLevel) * 100;
show_debug_message(room_width)
draw_healthbar(room_width * 0.20, 4, room_width * 0.30, 22, multCalc,
c_black, c_olive, c_green, 0, true, true)

var s = string_replace_all(string_format(hour, 2, 0) + ":" + string_format(minute, 2, 0) + ":" + string_format(second, 2, 0), " ", "0");

draw_text_transformed(room_width * 0.25, 755, s, 0.5, 0.5, 0);
draw_text_transformed(room_width * 0.25, 15, string_format(pointsForLevel - currentPoints, 0, 0), 0.5, 0.5, 0);





