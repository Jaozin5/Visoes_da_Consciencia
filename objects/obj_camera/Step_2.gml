camera_set_view_size(view_camera[0], global.camera_width, global.camera_height);

if(instance_exists(view_target)){
	var x1 = view_target.x - global.camera_width / 2;
	var y1 = view_target.x - global.camera_height / 2;
	
	x1 = clamp (x1, 0, room_width - global.camera_width);
	y1 = clamp (y1, 0, room_height - global.camera_height);
	
	var c_x = camera_get_view_x(view_camera[0]);
	var c_y = camera_get_view_y(view_camera[0]);
	
	camera_set_view_pos(view_camera[0], lerp(c_x, x1,view_spd),lerp(c_y, y1, view_spd));
	
}