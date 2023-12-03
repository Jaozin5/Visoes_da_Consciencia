switch(state1){
	case statess.OUT:
		if sub_image_index < imax + xmax{
			sub_image_index += sub_image_index_inc;
		} else {
			state1 = states.IN;
			if room_exists(rm_depre2) room_goto(rm_depre2)
		}
	break;
	case statess.IN:
		if sub_image_index > 0{
			sub_image_index -= sub_image_index_inc;
		} else instance_destroy();
	break;
}