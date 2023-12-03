function scr_transition(){
	if !instance_exists(obj_transitionFase1){
		instance_create_layer(x, y, "objs_funcionalidades", obj_transitionFase1)
	}
}