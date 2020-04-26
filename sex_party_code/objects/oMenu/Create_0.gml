cn = 0;

orientation = "";
orientation_sprite = "";

//draw name
c_name = c_white;
f_name = fName;

//navigation
height_position = 0;

width_position[menu.name]				= 0;
width_position[menu.body]				= 0; 
width_position[menu.orientation]		= 0; 
width_position[menu.ready]				= 0;

width_position_max[menu.name]			= 0;
width_position_max[menu.body]			= array_length_1d(global.body) - 1; 
width_position_max[menu.orientation]	= array_height_2d(global.orientation) - 1; 
width_position_max[menu.ready]			= 0;

position_max = array_length_1d(width_position) - 1;


// set a first random name
global.player_info[cn,2] = global.name[irandom(array_length_1d(global.name)-1)];
