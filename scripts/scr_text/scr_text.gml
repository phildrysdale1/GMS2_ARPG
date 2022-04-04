/// Script for all things text

// Base Textbox
function NineSliceBoxStretched(sprite, x1, y1, x2, y2, index)
{
	// Variables
	var _size = sprite_get_width(sprite) / 3;
	var _x1 = argument1;
	var _y1 = argument2;
	var _x2 = argument3;
	var _y2 = argument4;
	var _index = argument5;
    var _w = _x2 - _x1;
    var _h = _y2 - _y1	
		
	// Middle
	draw_sprite_part_ext(argument0, _index, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w - (_size*2), _h - (_size * 2), c_white, 1);
	
	// Corners
	// top left
	draw_sprite_part(argument0, _index, 0, 0, _size, _size, _x1, _y1);
	// top right
	draw_sprite_part(argument0, _index, _size*2, 0, _size, _size, _x1 + _w - _size, _y1);
	// bottom left
	draw_sprite_part(argument0, _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
	// bottom right
	draw_sprite_part(argument0, _index, _size * 2, _size * 2, _size, _size, _x1 + _w - _size, _y1 + _h - _size);
	
	// Edges
	// left
	draw_sprite_part_ext(argument0, _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	// right
	draw_sprite_part_ext(argument0, _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	// top
	draw_sprite_part_ext(argument0, _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, 1);
	// bottom
	draw_sprite_part_ext(argument0, _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white,1);


}// Create new Textbox
function NewTextBox()
{
	var _obj;

	if (instance_exists(oText))
	{
		_obj = oTextQueued;
	}
	else
	{
		_obj = oText;
	}
	with (instance_create_layer(0,0,"Instances",_obj))
	{
	textMessage = argument[0];
		if (instance_exists(other)) // other identifies the object that called the script
		{
			originInstance = other.id;
		}
		else
		{
			originInstance = noone;
		}
		
		if (argument_count > 1) 
		{
			background = argument[1];
		}
		else 
		{
			background = 1;
		}
	}
	with (oPlayer)
	{
		if (state !=PlayerStateLocked)
		{
			lastState = state;	
			state = PlayerStateLocked;
		}
	}
}
