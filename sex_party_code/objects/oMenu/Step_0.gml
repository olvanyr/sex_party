if global.state[cn] = "selection"
{
	//moving in the menue
	if global.menu_up[cn]
	{
		height_position -= 1;
		if height_position < 0 height_position = position_max;
	}
	if global.menu_down[cn]
	{
		height_position += 1;
		if height_position > position_max height_position = 0;
	}

	if global.menu_left[cn]
	{
		if width_position[height_position] == width_position_max[height_position] 
		{
			width_position[height_position] = 0;
		}else width_position[height_position] += 1;
	}
	
	if global.menu_right[cn]
	{
		
		if width_position[height_position] == 0 
		{
			width_position[height_position] = width_position_max[height_position];
		}else width_position[height_position] -= 1;
	}
	// getting info
	if height_position = menu.name && global.rng[cn]
	{
		global.player_info[cn,2] = global.name[irandom(array_length_1d(global.name)-1)];
	}

	global.player_info[cn,0] = global.body[width_position[menu.body]];

	global.player_info[cn,1] = width_position[menu.orientation];
	orientation_sprite = global.orientation[width_position[menu.orientation],0];
	
	if global.back[cn] global.state[cn] = "start";																			//go back to start from selection
	if global.enter[cn] && global.player_info[cn,1] != "" && global.player_info[cn,0] != ""  global.state[cn] = "ready";	//go from selection to ready


}

if global.state[cn] == "ready" && global.back[cn] global.state[cn] = "selection";		//go from ready to selection

if global.state[cn] == "start"
{
	global.player_info[cn,0] = "";
	global.player_info[cn,1] = "";
	if global.start[cn] || global.enter[cn] global.state[cn] = "selection";//go to start to selection
}

var ready = 0;
var start = 0;
for(var i = 0; i < array_length_1d(global.state);i++)
{
	if global.state[i] == "ready"
	{
		ready ++;
	}
	if global.state[i] == "start"
	{
		start ++;
	}
}

if (ready+start) == 4 && ready > 1
{
	room_goto_next();
}


/*
show_debug_message(" height : " + string(position));
show_debug_message(" width : " + string(width_position[position]));
show_debug_message(" ready : " + string(global.ready[cn]));
if body != "" && orientation_sprite != ""
{
show_debug_message(" player info : " + string(global.player_info));
show_debug_message(" global.state[cn] : " + string(global.state[cn]));
show_debug_message(" name : " + string(name));
show_debug_message(" body : " + string(sprite_get_name(body)));
show_debug_message(" orientation : " + string(sprite_get_name(orientation_sprite)));
}


