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
	current_position[position] += 1;
	if current_position[position] > current_position_max[position] current_position[position] = 0;
	
}
if global.menu_right[cn]
{
	current_position[position] -= 1;
	if current_position[position] < 0 current_position[position] = current_position_max[position];
	
}

if global. 
body = global.body[current_position[menu.body]];
orientation = current_position[menu.orientation];
orientation_sprite = global.orientation[current_position[menu.orientation],0];



//
show_debug_message(" body : " + string(sprite_get_name(body)));
show_debug_message(" orientation : " + string(sprite_get_name(orientation_sprite)));
