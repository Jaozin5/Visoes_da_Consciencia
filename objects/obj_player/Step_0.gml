move_state();

/*if(keyboard_check_pressed(ord("E"))){
	var _Inst = instance_nearest(x, y, par_interact);
	if (_Inst != noone){
		startDialogue(other.dialogue1);
	}
}*/



/*var nearestInteractable = instance_nearest(x, y, par_interact);

if (nearestInteractable != noone && point_distance(x, y, nearestInteractable.x, nearestInteractable.y) < 32 && keyboard_check_pressed(ord("E")))
{
  if (nearestInteractable.object_index = obj_ajudante_npc)
  {
    startDialogue(other.dailogue1);
  }
  if (nearestInteractable.object_index = oTree)
  {
    startDialogue("I like trees")
  }
}*/


var sightLength = 16 // How far your character would be able to look forward to interact with something
var nearestInteractable =  instance_position(lengthdir_x(sightLength, dir), lengthdir_y(sightLength, dir), par_interact);

if (nearestInteractable != noone && keyboard_check_pressed(ord("E")))
{
  if (nearestInteractable.object_index = obj_ajudante_npc) // Change this to the objectname of the object you want to interact with
  {
	show_debug_message("Colidindo")
    startDialogue(nearestInteractable.dialogue1) // dialogue1 would be changed to the dialoguevariable thats stored in the object
  }
}