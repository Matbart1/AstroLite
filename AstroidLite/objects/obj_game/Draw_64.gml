/// @description Display data to the screen
// You can write your code in this editor
draw_set_font(fntGameText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/4, 15, "<> Total Score: " + string(int64(points)) + " <> Next Level: " + string(int64(levelPoints)) + " <>");

