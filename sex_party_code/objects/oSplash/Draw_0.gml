
speed -= 0.5;
if image_index == image_number-1
{
	image_speed = 0;
	speed = 0;
	
	var array_position = array_height_2d(controller.effect_splash);
	if controller.effect_splash[0,0] == noone
	{
		array_position = 0;
	}
	controller.effect_splash[array_position,0] = color;
	controller.effect_splash[array_position,1] = image_angle;
	controller.effect_splash[array_position,2] = x;
	controller.effect_splash[array_position,3] = y;
	instance_destroy();	
}

draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,color,1);

/*

var sprite = layer_sprite_create("Assets",x,y,sSplash);
	layer_sprite_index(sprite, 3);
	layer_sprite_speed(sprite,0);
	layer_sprite_blend(sprite,color);
	layer_sprite_xscale(sprite,2);
	layer_sprite_yscale(sprite,2);
	layer_sprite_angle(sprite,image_angle);