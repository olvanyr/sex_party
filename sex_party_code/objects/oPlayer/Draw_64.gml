var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);


global_score = negative_score;
for(var i = 0; i < array_length_1d(color_score); i++)
{
	global_score += color_score[i];
}
//draw HUD
var r = 20; // rayon
var is = 70; //interspace
#region in game
if state == "in_game"
{
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

	var c = actual_color[my_move[0]];
	draw_circle_color(position_x + is,position_y + is*2,r,c,c,0);

	var c = actual_color[my_move[1]];
	draw_circle_color(position_x + is*2,position_y + is,r,c,c,0);

	var c = actual_color[my_move[2]];
	draw_circle_color(position_x,position_y + is,r,c,c,0);

	var c = actual_color[my_move[3]];
	draw_circle_color(position_x + is,position_y,r,c,c,0);

	draw_set_text(c_white,fName,fa_left,fa_middle);
	draw_text(position_x + is*3,position_y,name);

	draw_set_text(c_white,fScore,fa_left,fa_middle);

	draw_sprite(sPoint,0,position_x + is*3,position_y+is);
	draw_text(position_x + is*3+sprite_get_width(sPoint),position_y+is,"  : " + string(global_score));
}
#endregion

#region score
if state == "end_game"
{
	if cn == 0 
	{
		var position_x = (view_w/4); 
		var position_y = 0 +60;
	}
	if cn == 1 
	{
		var position_x = 3*(view_w/4); 
		var	position_y = 0 +60;
	}
	if cn == 2 
	{
		var position_x = (view_w/4);
		var	position_y = (view_h/2) +60;
	}
	if cn == 3 
	{
		var position_x = 3*(view_w/4);
		var	position_y = (view_h/2) +60;
	}
		//draw name
		var is = 70; //inter space
		var c = c_white;
		draw_set_text(c,fName,fa_center,fa_middle);
		var name_length = string_width(name);
		draw_text(position_x,position_y,name);
		draw_sprite_ext(sprite_index,0,position_x - (name_length/2) - sprite_get_width(sprite_index) - 40,position_y,1,1,45,c_white,1);
		
		for(var i = 0; i < array_length_1d(my_move); i++)
		{
			var c = actual_color[my_move[i]];
			draw_set_text(c,fName,fa_center,fa_middle);
			draw_text(position_x + is,position_y + (is * (i + 1)),color_score[my_move[i]]);	
			draw_circle_color(position_x-is,position_y + (is * (i + 1)),r,c,c,0);
		}
		var c = c_red;
		draw_set_text(c,fName,fa_center,fa_middle);
		draw_text(position_x,position_y + (is * (array_length_1d(my_move) + 1)),"non consent : " + string(negative_score));
		
		c = c_aqua;
		draw_set_text(c,fName,fa_center,fa_middle);
		draw_text(position_x,position_y + (is * (array_length_1d(my_move) + 2)),"total : " + string(global_score));
		
		
		
		if global.start[cn] restart = true;
		if !restart
		{
			c = c_white;
			draw_set_text(c,fRestart,fa_center,fa_middle);
			var text ="restart :  ";
			var text_length = string_width(text);
			draw_text(position_x,position_y + (is * (array_length_1d(my_move) + 3)),text);
			draw_sprite_ext(sRestart,0,position_x + (text_length/2),position_y + (is * (array_length_1d(my_move) + 3)),4,4,0,c_white,1);
		}
		
}
#endregion


