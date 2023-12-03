//var _Inst = instance_place(x,y, par_interact)

var _Inst = instance_nearest(x, y, obj_ajudante_npc)
if (keyboard_check_pressed(ord("E")) and _Inst != true)
{
	show_debug_message("Interagindo")
	startDialogue(other.dialogue1);
}