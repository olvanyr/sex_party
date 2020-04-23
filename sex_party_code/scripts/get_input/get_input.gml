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