function move_state(){
get_input();
//Moviment
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//where the player is facing
var dir = point_direction(0, 0, xaxis,yaxis)

if (xaxis == 0) and (yaxis == 0){
	len = 0;
} else {
	len = spd;
}

#region Direção Sprite
//Mexer sprite
image_speed = sign(len)*.8;
if(len == 0) image_index = 0;

//Vertical
if(spdvertical > 0) {
	sprite_index = spr_player_baixo
}else if (spdvertical < 0) {
	sprite_index = spr_player_cima
}
//Horizontal
if(spdhorizon > 0) {
	sprite_index = spr_player_direita
}else if (spdhorizon < 0) {
	sprite_index = spr_player_esquerda
}

#endregion

//Variáveis de Velocidade
spdhorizon = lengthdir_x(len, dir);
spdvertical = lengthdir_y(len, dir);

#region Colisões
#region Colisões Horizontais
//Colisão horizontal Parede
if place_meeting(x+spdhorizon, y, obj_wall){
	while !place_meeting(x+sign(spdhorizon), y, obj_wall){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}
//Colisão horizontal Vaso
if place_meeting(x+spdhorizon, y, obj_vaso){
	while !place_meeting(x+sign(spdhorizon), y, obj_vaso){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}
//Colisão horizontal Mesa
if place_meeting(x+spdhorizon, y, obj_mesa){
	while !place_meeting(x+sign(spdhorizon), y, obj_mesa){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}
//Colisão horizontal Capsula
if place_meeting(x+spdhorizon, y, obj_capsula_depre){
	while !place_meeting(x+sign(spdhorizon), y, obj_capsula_depre){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}
//Colisão horizontal Lousa
if place_meeting(x+spdhorizon, y, obj_lousa){
	while !place_meeting(x+sign(spdhorizon), y, obj_lousa){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}
//Colisão horizontal Lousa
if place_meeting(x+spdhorizon, y, obj_arvore){
	while !place_meeting(x+sign(spdhorizon), y, obj_arvore){
		x += sign(spdhorizon);
	}
	spdhorizon = 0;
}

x +=spdhorizon;
#endregion

#region Colisões Verticais
//Colisão Vertical Parede
if place_meeting(x, y+spdvertical, obj_wall){
	while !place_meeting(x, y+sign(spdvertical), obj_wall){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}
//Colisão Vertical Vaso
if place_meeting(x, y+spdvertical, obj_vaso){
	while !place_meeting(x, y+sign(spdvertical), obj_vaso){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}
//Colisão Vertical Mesa
if place_meeting(x, y+spdvertical, obj_mesa){
	while !place_meeting(x, y+sign(spdvertical), obj_mesa){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}
//Colisão Vertical Capsula
if place_meeting(x, y+spdvertical, obj_capsula_depre){
	while !place_meeting(x, y+sign(spdvertical), obj_capsula_depre){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}
//Colisão Vertical Lousa
if place_meeting(x, y+spdvertical, obj_lousa){
	while !place_meeting(x, y+sign(spdvertical), obj_lousa){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}
//Colisão Vertical Árvore
if place_meeting(x, y+spdvertical, obj_arvore){
	while !place_meeting(x, y+sign(spdvertical), obj_arvore){
		y += sign(spdvertical);
	}
	spdvertical = 0;
}

y +=spdvertical;
#endregion


#endregion
}