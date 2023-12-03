resolution_width = window_get_width();
resolution_height = window_get_height();
resolution_scale = 1.5;

global.camera_width = resolution_width/ resolution_scale;
global.camera_height = resolution_height/ resolution_scale;

view_target = obj_player;
view_spd = 0.1

window_set_size(global.camera_width * resolution_scale, global.camera_height * resolution_scale);
surface_resize(application_surface, global.camera_width * resolution_scale, global.camera_height * resolution_scale);
display_set_gui_size(global.camera_width, global.camera_height);


camWidht = 640;
camHeight = 360;

follow = obj_player;

xTo = x;
yTo = y;
