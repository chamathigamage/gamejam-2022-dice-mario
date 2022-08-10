timer -= 1;
draw_sprite(textbox, 0, x, y)


draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_set_font(BannerFont);
draw_set_color(c_white);
draw_text_ext(x, y, text, stringHeight, boxWidth );
if (timer = 0){
	instance_destroy(self);
};