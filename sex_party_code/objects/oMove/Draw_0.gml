r += 8;
outline += 0.5;

if state = "expand"
{
	image_speed = 3;
	var fraction = lerp(0,2,(r_max-r)/r_max);
	if r < r_max 
	{
		//draw_circle_color(x,y,r,c,c,1);
		draw_sprite_ext(sAura2,image_index,x,y,2-fraction,2-fraction,image_angle,c,1);
	}else 
	{
		state = "decomposition";
		image_index = 0;
	}
	
}

if state == "decomposition"
{
	draw_sprite_ext(sAura_decomposition,image_index,x,y,2,2,image_angle,c,1);
	if image_index >= sprite_get_number(sAura_decomposition)-1
	{
		image_speed = 0;
		state = "end";
	}
}

if state = "end" && once == false
{
	once = true;
	
	var array_position = array_height_2d(controller.effect_move);
	if controller.effect_move[0,0] == noone
	{
		array_position = 0;
	}
	controller.effect_move[array_position,0] = c;
	controller.effect_move[array_position,1] = image_angle;
	controller.effect_move[array_position,2] = x;
	controller.effect_move[array_position,3] = y;
}

