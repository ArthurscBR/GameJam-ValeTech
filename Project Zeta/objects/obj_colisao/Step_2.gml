var _colx, _coly;

_colx = instance_place(x+velh, y, obj_parede);
_coly = instance_place(x, y+velv, obj_parede);

if(_colx)
{
	//Colisão a direita
	if(velh>0)
	{
		x = _colx.bbox_left+(x-bbox_right);
	}
	//Colisão a esquerda
	if(velh<0)
	{
		x = _colx.bbox_right+(x-bbox_left);
	}
	
	velh = 0;
}

if(_coly)
{
	//Colisão para cima 
	if(velv>0)
	{
		y = _coly.bbox_top+(y-bbox_bottom);
	}
	//Colisão para baixo
	if(velv<0)
	{
		y = _coly.bbox_bottom+(y-bbox_top);
	}
	
	velv = 0;
}

x += velh;
y += velv;