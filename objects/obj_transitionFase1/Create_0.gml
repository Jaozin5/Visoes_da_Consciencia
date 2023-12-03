enum states {
	OUT,
	IN
}
state = states.OUT;


spr = spr_trans_sq;
sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);

xmax = display_get_gui_width() div sprw;
ymax = display_get_gui_height() div sprh;
imax = sprite_get_number(spr);

sub_image_index_inc = sprite_get_speed(spr)/game_get_speed(gamespeed_fps);
sub_image_index = 0;

col = c_black;