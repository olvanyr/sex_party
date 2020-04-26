if state = "selection"
{
	if global.menu_up[cn]
	{
		position -= 1;
		if position < 0 position = position_max;
	}
	if global.menu_down[cn]
	{
		position += 1;
		if position > position_max position = 0;
	}

	if global.menu_left[cn]
	{
		if current_position[position] == current_position_max[position] 
		{
			current_position[position] = 0;
		}else current_position[position] += 1;
		
	
	}
	if global.menu_right[cn]
	{
		
		if current_position[position] == 0 
		{
			current_position[position] = current_position_max[position];
		}else current_position[position] -= 1;
		
	
	}


	if position = menu.body && global.enter[cn]
	{
		global.player_info[cn,0] = global.body[current_position[menu.body]];
	
	}

	if position = menu.orientation && global.enter[cn]
	{
		global.player_info[cn,1] = current_position[menu.orientation];
		orientation_sprite = global.orientation[current_position[menu.orientation],0];
	}

	if position = menu.name && global.rng[cn]
	{
		name = global.name[irandom(array_length_1d(global.name)-1)];
	}
}

if state == "start" && (global.start[cn] ||global.enter[cn]) state = "selection";

if state == "selection" && global.back[cn] state = "start";

if state == "start"
{
	global.player_info[cn,0] = "";
	global.player_info[cn,1] = "";
}


if global.player_info[cn,1] != "" && global.player_info[cn,0] != "" && state == "selection"
{
	global.ready[cn] = true;
}else 
{
	global.ready[cn] = false;
}




show_debug_message(" height : " + string(position));
show_debug_message(" width : " + string(current_position[position]));
/*
show_debug_message(" ready : " + string(global.ready[cn]));
if body != "" && orientation_sprite != ""
{
show_debug_message(" player info : " + string(global.player_info));
show_debug_message(" State : " + string(state));
show_debug_message(" name : " + string(name));
show_debug_message(" body : " + string(sprite_get_name(body)));
show_debug_message(" orientation : " + string(sprite_get_name(orientation_sprite)));
}


