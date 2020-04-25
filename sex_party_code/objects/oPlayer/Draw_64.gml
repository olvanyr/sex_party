var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);


global_score = 0;
for(var i = 0; i < array_length_1d(color_score); i++)
{
	global_score += color_score[i];
}

//show_debug_message("player : "  + string(cn) + " global score : " + string(global_score));

//draw HUD
var r = 20; // rayon
var is = 70; //interspace
if cn == 0 
{
	var position_x = 50 
	var position_y = 50;
}
if cn == 1 
{
	var position_x = view_w - 500; 
	var	position_y = 50;
}
if cn == 2 
{
	var position_x = 50 
	var	position_y = view_h - 190;
}
if cn == 3 
{
	var position_x = view_w - 500;
	var	position_y = view_h - 190;
}


draw_sprite_ext(sprite_index,0,position_x + is*1,position_y+is*1,0.5,0.5,image_angle,c_white,1);

var c = actual_color[global.orientation[orientation,1]];
draw_circle_color(position_x + is,position_y + is*2,r,c,c,0);

var c = actual_color[global.orientation[orientation,2]];
draw_circle_color(position_x + is*2,position_y + is,r,c,c,0);

var c = actual_color[global.orientation[orientation,3]];
draw_circle_color(position_x,position_y + is,r,c,c,0);

var c = actual_color[global.orientation[orientation,4]];
draw_circle_color(position_x + is,position_y,r,c,c,0);

draw_set_text(c_white,fName,fa_left,fa_middle);
draw_text(position_x + is*3,position_y,name);

draw_set_text(c_white,fScore,fa_left,fa_middle);

draw_sprite(sPoint,0,position_x + is*3,position_y+is);
draw_text(position_x + is*3+sprite_get_width(sPoint),position_y+is,"  : " + string(global_score));


