var _Inst = instance_nearest(obj_player.x, obj_player.y, obj_predio)
if (keyboard_check_pressed(ord("E")) and _Inst != noone){
	if !instance_exists(obj_transitionFase2){
		instance_create_layer(x, y, "objs_funcionalidades", obj_transitionFase2);	
	}
}