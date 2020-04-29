
speed -= 0.5;
if image_index == image_number-1
{
	image_speed = 0;
	speed = 0;
	
	var sprite = layer_sprite_create("Assets",x,y,sSplash);
	layer_sprite_index(sprite, 3);
	layer_sprite_speed(sprite,0);
	layer_sprite_blend(sprite,color);
	layer_sprite_xscale(sprite,2);
	layer_sprite_yscale(sprite,2);
	layer_sprite_angle(sprite,image_angle);
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