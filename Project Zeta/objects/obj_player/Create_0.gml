// Inherit the parent event
event_inherited();
velocidade = 5;
gravidade = 0.3;
pulo = -7;

function input_player()
{
	var _left, _right, _jump;
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_jump =  keyboard_check(ord("W"));
	
	velh = _right - _left;
	
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