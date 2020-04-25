enum menu
{
	body,
	ori,
	
	name
}

cn = 0;

name = "";

orientation = "";

position = 0;


current_position[menu.body] = 0; 
current_position[menu.ori]	= 0; 
current_position[menu.name]	= 0;
position_max = array_length_1d(current_position);
