color = make_color_rgb(irandom(255),irandom(255),irandom(255));
once = false;

image_angle = irandom(360);

speed = random_range(6,15);

direction = irandom(360);

image_speed = 3;

if !instance_exists(oParticle_controller)
{
	controller = instance_create_layer(0,0,"Assets",oParticle_controller);
}else controller = oParticle_controller;