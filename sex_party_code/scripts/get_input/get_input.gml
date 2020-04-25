/// @description get_input
/// @arg controller_number


var dz = 0.6; // dead_zone
var di_dz = 0.3; //diagonal_dead_zone

var nb = argument0;


if abs(gamepad_axis_value(nb,gp_axislv)) > di_dz && abs(gamepad_axis_value(nb,gp_axislh)) > di_dz
{
	dz = 0.2;
}

if (max(gamepad_axis_value(nb,gp_axislv),0) > dz) global.down[nb] = gamepad_axis_value(nb,gp_axislv);
		
else global.down[nb] = 0;
	
if (abs(min(gamepad_axis_value(nb,gp_axislv),0)) > dz)	global.up[nb] = gamepad_axis_value(nb,gp_axislv);
		
else global.up[nb] = 0;

if (abs(min(gamepad_axis_value(nb,gp_axislh),0)) > dz)	global.left[nb] = gamepad_axis_value(nb,gp_axislh);
		
else global.left[nb] = 0;
	
if (max(gamepad_axis_value(nb,gp_axislh),0) > dz) global.right[nb] = gamepad_axis_value(nb,gp_axislh);
		
else global.right[nb] = 0;


//action
global.move_1 [nb] = gamepad_button_check_pressed(nb,gp_face1);
global.move_2 [nb] = gamepad_button_check_pressed(nb,gp_face2);
global.move_3 [nb] = gamepad_button_check_pressed(nb,gp_face3);
global.move_4 [nb] = gamepad_button_check_pressed(nb,gp_face4);

//menu

global.menu_down[nb] = 0;
global.menu_up[nb] = 0;
global.menu_left[nb] = 0;
global.menu_right[nb] = 0;

global.enter[nb] = 0;
global.random[nb] = 0;

if gamepad_button_check_pressed(nb,gp_face2) global.enter[nb] = 1;
if gamepad_button_check_pressed(nb,gp_face4) global.back[nb] = 1;

if (abs(gamepad_axis_value(nb,gp_axislv)) > 0.5)
{
	if (max(gamepad_axis_value(nb,gp_axislv),0) > 0.7) && !toggle[nb]
	{
		global.menu_down[nb] = 1;
		toggle[nb] = true;
	}

	
	if (abs(min(gamepad_axis_value(nb,gp_axislv),0)) > 0.7) && !toggle[nb]
	{
		global.menu_up[nb] = 1;
		toggle[nb] = true;
	}
}else toggle[nb] = false;


if (abs(gamepad_axis_value(nb,gp_axislh)) > 0.1)
{
	if (abs(min(gamepad_axis_value(nb,gp_axislh),0)) > 0.7) && !toggle2[nb]
	{
		global.menu_left[nb] = 1;
		toggle2[nb] = true;
	}
	if (max(gamepad_axis_value(nb,gp_axislh),0) > 0.7)&& !toggle2[nb]
	{
		global.menu_right[nb] = 1;
		toggle2[nb] = true;
	}
}else toggle2[nb] = false;

