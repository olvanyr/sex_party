//destroy the instance if the player was not ready in the menu
if global.player_info[cn,3] == false
{
	instance_destroy();
}

// get info from the menu
name = global.player_info[cn,2];
orientation = global.player_info[cn,1];
sprite_index = global.body[global.player_info[cn,0]];

show_debug_message(" orientation : " + string(orientation));


// var for the movement
acceleration = 0.3;
max_speed = 20;

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
image_angle = 45;

current_speed = 0;

//Keep strack of the score
global_score = 0;

//detecting other playey
collision_radius = 100;

//move cooldown
move_timer = 0;
move_cooldown = 30;

//make the controler pulse
rumble_timer = 0;

//I use an array top store all the variable and so, I can juste choose
//an antry in the array to asigne a different variable for each color so it prevent code duplication

color[move.blue]	= 0; 
color[move.red]		= 0; 
color[move.green]	= 0; 
color[move.yellow]	= 0; 
color[move.purple]	= 0; 
color[move.pink]	= 0; 

color_score[move.blue]		= 0;
color_score[move.red]		= 0; 
color_score[move.green]		= 0; 
color_score[move.yellow]	= 0; 
color_score[move.purple]	= 0;
color_score[move.pink]	= 0;

actual_color[move.blue]		= c_blue;
actual_color[move.red]		= c_red;
actual_color[move.green]	= c_green;
actual_color[move.yellow]	= c_yellow;
actual_color[move.purple]	= c_purple;
actual_color[move.pink]		= make_color_rgb(215,123,186);


//choose move
my_move[0] = "";
my_move[1] = "";
my_move[2] = "";
my_move[3] = "";


var move_length = array_length_2d(global.ori_move,orientation);

var list = ds_list_create();
for (var i = 0; i < move_length; i++) {
   list[| i] = global.ori_move[orientation,i];
}
ds_list_shuffle(list);

for (var i = 0; i < array_length_1d(my_move); i++) {
   my_move[i] = list[| i];
}
ds_list_destroy(list);
/*
for(var i = 0; i < 4; i++)
{
	
	
	var temp_move = global.move[orientation,irandom(move_length-1)];
	my_move[i] = global.move[orientation,irandom(move_length-1)];
}

