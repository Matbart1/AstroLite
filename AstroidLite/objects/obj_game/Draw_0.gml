/// @description Display data to the screen
// You can write your code in this editor
draw_set_font(fntBigGameText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * 0.10, 30, "Total Score: " + string(int64(points)));
draw_text(room_width * 0.90, 30, "Next Level: " + string(int64(levelPoints)));



