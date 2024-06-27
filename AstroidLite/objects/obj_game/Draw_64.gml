/// @description Insert description here
// You can write your code in this editor
/// @description Display data to the screen
// You can write your code in this editor
draw_set_color(c_yellow)
draw_set_font(fntBigGameText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text(room_width * 0.10, 30, "Total Score: " + string(int64(points)));
//draw_text(room_width * 0.90, 30, "Next Level: " + string(int64(levelPoints)));
draw_text_transformed(room_width * 0.05, 15, "Next Level: " + string(int64(levelPoints - points)), 0.5, 0.5, 0);
draw_text_transformed(room_width * 0.45, 15, "Total Score: " + string(int64(points)), 0.5, 0.5, 0);