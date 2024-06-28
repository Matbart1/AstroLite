/// @description Display data to the screen
// You can write your code in this editor

draw_sprite_ext(global.img, 0, 0, 0, 1, 1, 0, c_white, 1);
draw_set_color(c_black);
draw_set_font(fntUpgradeText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * 0.50, 15, "Level Up");
//instance_create_depth(room_width/2, room_height/8, 100, objMenuResume);
//instance_create_depth(room_width/2, room_height/1.5, 100, objMenuExit);
objLevelBox.depth = -100;
