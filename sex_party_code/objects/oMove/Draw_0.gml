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
	var sprite = layer_sprite_create("Effects",x,y,sAura_decomposition);
	layer_sprite_index(sprite, 3);
	layer_sprite_speed(sprite,0);
	layer_sprite_blend(sprite,c);
	layer_sprite_xscale(sprite,2);
	layer_sprite_yscale(sprite,2);
	layer_sprite_angle(sprite,image_angle);
}

