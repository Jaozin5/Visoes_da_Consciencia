switch(state){
	case states.OUT:
		if sub_image_index < imax + xmax{
			sub_image_index += sub_image_index_inc;
		} else {
			state = states.IN;
			if room_exists(rm_depre1) room_goto(rm_depre1)
		}
	break;
	case states.IN:
		if sub_image_index > 0{
			sub_image_index -= sub_image_index_inc;
		} else instance_destroy();
	break;
}