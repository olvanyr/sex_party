
cn = 0;

name = "";

orientation = "";
orientation_sprite = "";

body = "";

position = 0;


current_position[menu.body] = 0; 
current_position[menu.orientation]	= 0; 
current_position[menu.name]	= 0;


current_position_max[menu.body] = array_length_1d(global.body) - 1; 
current_position_max[menu.orientation]	= array_height_2d(global.orientation) - 1; 
current_position_max[menu.name]	= 0;
position_max = array_length_1d(current_position);
