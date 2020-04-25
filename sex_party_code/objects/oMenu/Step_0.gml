if global.menu_down[cn]
{
	position += 1;
	if position > position_max position = 0;
}
if global.menu_up[cn]
{
	position -= 1;
	if position < 0 position = position_max;
}

show_debug_message("position : " + string(position))
