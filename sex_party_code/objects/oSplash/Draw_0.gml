
speed -= 0.5;
if image_index == image_number-1
{
	image_speed = 0;
	speed = 0;
}

draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,color,1);