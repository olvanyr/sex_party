orientation = ori.ace; 


cn = 0; //controller number


acceleration = 0.2;
max_speed = 6;

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
image_angle = 45;


last_button = noone;

//detecting other playey
collision_radius = 100;

//I use an array top store all the variable and so, I can juste choose
//an antry in the array to asigne a different variable for each color so it prevent code duplication

color[move.blue]	= 0; // blue
color[move.red]		= 0; // red
color[move.green]	= 0; // green
color[move.yellow]	= 0; // yellow

color_score[move.blue]		= 0; // blue		score
color_score[move.red]		= 0; // red		score
color_score[move.green]		= 0; // green	score
color_score[move.yellow]	= 0; // yellow	score

actual_color[move.blue]		= c_blue;
actual_color[move.red]		= c_red;
actual_color[move.green]	= c_green;
actual_color[move.yellow]	= c_yellow;


move_timer = 0;
move_cooldown = 30;