// Inherit the parent event
event_inherited();
velocidade = 5;
gravidade = 0.3;
pulo = -7;
portal_1 = true;
function input_player()
{
	var _left, _right, _jump;
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_jump =  keyboard_check(ord("W"));
	
	velh = (_right - _left) * velocidade;
	
	var _no_chao = place_meeting(x, y+1, obj_parede);
	
	
	if(_no_chao)
	{
		if(_jump)
		{
			velv = pulo;
		}
	}
	else
	{
		velv += gravidade;
	}
}

function movingInLayers()
{
	if(place_meeting(x, y, obj_portal))
	{	
		if(room_next(room) != -1)
			room_goto_next();
	}
	
	if(place_meeting(x, y, obj_portal_volta))
	{	
			room_goto_previous();
	}	
}
