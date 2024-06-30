/// @description Insert description here
// You can write your code in this editor
draw_set_font(fntSmallGameText)
draw_set_alpha(alphaVal)
alphaVal -= 0.015;
xpString = draw_text(x/2,y/1.885,$"+{string(value)}");
draw_set_alpha(1)