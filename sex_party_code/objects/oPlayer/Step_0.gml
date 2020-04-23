// if no joystick input is registered, then put the speed to 0
if global.down[cn] == 0 && global.up[cn] == 0 && global.left[cn] == 0 && global.right[cn] == 0
{
	current_speed = 0;
}else current_speed += acceleration;

if current_speed > max_speed current_speed = max_speed; // if speed is greater than max speed, reduce it to max speed

hsp = current_speed * (global.right[cn] + global.left[cn]);
vsp = current_speed * (global.down[cn] + global.up[cn]);


if vsp != 0
{
	//Re apply fractions
	vsp += vsp_fraction;

	//Store and Remove fractions
	vsp_fraction = frac(vsp);
	vsp -= vsp_fraction;
}
if hsp != 0
{
	//Re apply fractions
	hsp += hsp_fraction;

	//Store and Remove fractions
	hsp_fraction = frac(hsp);
	hsp -= hsp_fraction;
}

move_and_collide(hsp,vsp);



// generate move
if global.move_1[cn] && move_timer > move_cooldown
{
	move_type = "blue";
	move_timer = 0;
	if collision_circle(x,y,collision_radius,oPlayer,0,1)
	{
		blue ++;
	}
	with instance_create_layer(x,y, "Effects",oMove_blue)
	{
		creator = other.id;
		blue_score = other.blue_score;
	}
}

move_timer ++;




//managing current quantity of move actualy here
with collision_circle(x,y,collision_radius,oPlayer,0,1)
{
	if blue >= 3 && other.blue >= 3
	{
		blue_score ++;
		other.blue_score ++;
		blue = 0;
		other.blue = 0;
	}
	
	if other.blue > 3 && blue < 2
	{
		other.blue_score --;
		other.blue = 0;
	}
}


show_debug_message("======================================================");
show_debug_message("player : "  + string(cn) + " blue : " + string(blue));
show_debug_message("player : "  + string(cn) + " blue_score  : " + string(blue_score));