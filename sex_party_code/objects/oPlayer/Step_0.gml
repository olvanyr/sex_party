if mouse_check_button_pressed(mb_left)
{
	with instance_create_layer(mouse_x,mouse_y,"Instances",oTransition)
	{
		open = false;
	}
}
if mouse_check_button_pressed(mb_right)
{
	with instance_create_layer(mouse_x,mouse_y,"Instances",oTransition)
	{
		open = true;
	}
}

if state == "in_game"
{
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
	if global.move_1[cn] || global.move_2[cn] || global.move_3[cn] || global.move_4[cn]
	{
		if global.move_1[cn] var move_type = my_move[0]; // for the orientation ace, wee get the move 1
		if global.move_2[cn] var move_type = my_move[1];
		if global.move_3[cn] var move_type = my_move[2];
		if global.move_4[cn] var move_type = my_move[3];
	
		if move_timer > move_cooldown
		{
			move_timer = 0;
			if collision_circle(x,y,collision_radius,oPlayer,0,1)
			{
				color[move_type] ++;
			}
			repeat(irandom_range(2,6))  
			{
				with instance_create_layer(x,y, "Effects",oSplash) color = other.actual_color[move_type];
			}
			with instance_create_layer(x,y, "Effects",oMove)
			{
				creator = other.id;
				c = other.actual_color[move_type];
				color_score = other.color_score[move_type];
				color = move_type; // we send the numlber allowed to the color to the aura, so it can adresse it back when destroying
			}
		}
	}

	move_timer ++;




	//managing current quantity of move actualy here
	with collision_circle(x,y,collision_radius,oPlayer,0,1)
	{
		for (var i = 0; i < array_length_1d(color); i++)
		{
			if color[i] >= 3 && other.color[i] >= 3
			{
				color_score[i] ++;
				other.color_score[i] ++;
				color[i] = 0;
				other.color[i] = 0;
			}
	
			if other.color[i] > 3 && color[i] < 2
			{
				other.negative_score --;
				other.color[i] = 0;
			}
		}
	}

	// orientate the sprite in the direction 
	if vsp!= 0 || hsp != 0
	image_angle = point_direction(0,0,hsp,vsp) + 45;

	// making the gamepad vibrate if you are close from another player

	gamepad_set_vibration(cn,0,0);
	if collision_circle(x,y,collision_radius * 1.5,oPlayer,0,1)
	{
		var intensity = 20;
		if collision_circle(x,y,collision_radius,oPlayer,0,1) intensity = 10;
		if collision_circle(x,y,collision_radius/2,oPlayer,0,1) intensity = 6;
	
		rumble_timer ++;
		if rumble_timer mod intensity == 0	gamepad_set_vibration(cn,0.05,0.05) else gamepad_set_vibration(cn,0,0);
	}else rumble_timer = 0;

}

/*
show_debug_message("======================================================");
show_debug_message("player : "  + string(cn) + " blue : " + string(color[0]));
show_debug_message("player : "  + string(cn) + " blue_score  : " + string(color_score[0]));
show_debug_message("======================================================");
show_debug_message("player : "  + string(cn) + " red : " + string(color[1]));
show_debug_message("player : "  + string(cn) + " red_score  : " + string(color_score[1]));