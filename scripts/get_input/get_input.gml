//Teclas de movimento
function get_input(){
	//Definição de teclas
	key_up = keyboard_check(ord("W"));
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_down = keyboard_check(ord("S"));
	key_interact = keyboard_check_pressed(ord("E"));

	//Direção em que o player está
	xaxis = (key_right - key_left);
	yaxis = (key_down - key_up);
	
}
