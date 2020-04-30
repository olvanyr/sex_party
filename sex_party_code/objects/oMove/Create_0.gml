// init variable
lifespawn = 180;
timer = 0;

creator = noone;
color = 0; // number allowed to the color in the player color array
color_score = 0; // beacause this var is instanciet, we don't need to know the actual color for the score


//cosmetic
r = 0;
r_max = 100;
c = c_red;

outline = 0;

once = false;

image_angle = irandom(360);

state = "expand";


if !instance_exists(oParticle_controller)
{
	controller = instance_create_layer(0,0,"Assets",oParticle_controller);
}else controller = oParticle_controller;