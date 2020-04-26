var alph_w = room_width/2;
var alph_h = room_height/2;
var quarter_w = room_width/4;
var quarter_h = room_height/4;
var third_h = room_height/6; 

// were to put the menu on the screen
if cn == 0
{
	var x_origin = 0;
	var y_origin = 0;
}
if cn == 1
{
	var x_origin = alph_w;
	var y_origin = 0;
}
if cn == 2
{
	var x_origin = 0;
	var y_origin = alph_h;
}
if cn == 3
{
	var x_origin = alph_w;
	var y_origin = alph_h;
}



var color = c_white;

if global.state[cn] == "start"
{
	var start = "< - Start - >";
	draw_set_text(color,f_name,fa_center,fa_middle);
	draw_text(x_origin + quarter_w,y_origin + quarter_h,start);
}

if global.state[cn] == "ready"
{
	var ready = "Ready !!!";
	draw_set_text(color,f_name,fa_center,fa_middle);
	draw_text(x_origin + quarter_w,y_origin + quarter_h,ready);
}

if global.state[cn] == "selection"
{
	var c_rect = c_white;
	draw_rectangle_color(x_origin + 1,y_origin + 1,x_origin + alph_w, y_origin + alph_h,c_rect,c_rect,c_rect,c_rect,true);
	
	
	
	
	
	//draw name
	if height_position == menu.name color = c_yellow else color = c_white;
	var name = global.player_info[cn,2];
	var name_length = string_width(name);
	var position_name = y_origin + 30;
	draw_set_text(color,f_name,fa_center,fa_middle);
	draw_text(x_origin + quarter_w,position_name,name);
	draw_sprite_ext(sY_random,0,x_origin + quarter_w + (name_length/2) + 20,position_name,2,2,0,c_white,1);
	
	
	//draw body
	if height_position == menu.body color = c_yellow else color = c_white;
	var body = global.body[width_position[menu.body]];
	var position_body = y_origin + third_h;
	//show_debug_message("body : " + string(body));
	draw_set_text(color,fScore,fa_center,fa_middle);
	draw_text(x_origin + quarter_w - ((sprite_get_width(body)*1.5)/2) - 40,position_body,"<");
	draw_text(x_origin + quarter_w + ((sprite_get_width(body)*1.5)/2) + 40,position_body,">");
	draw_sprite_ext(body,0,x_origin + quarter_w, position_body,1.5,1.5,45,c_white,1);
	
	//draw orientation
	if height_position == menu.orientation color = c_yellow else color = c_white;
	var orientation = global.orientation[width_position[menu.orientation]];
	var position_orientation = y_origin + third_h*2;
	//show_debug_message("orientation : " + string(orientation));
	draw_set_text(color,fScore,fa_center,fa_middle);
	draw_text(x_origin + quarter_w - ((sprite_get_width(orientation)*1.5)/2) - 40,position_orientation,"<");
	draw_text(x_origin + quarter_w + ((sprite_get_width(orientation)*1.5)/2) + 40,position_orientation,">");
	draw_sprite_ext(orientation,0,x_origin + quarter_w, position_orientation,1.5,1.5,0,c_white,1);
	
	//draw ready
	if height_position == menu.ready color = c_yellow else color = c_white;
	var ready = "ready !?";
	var ready_length = string_width(ready);
	var position_ready = y_origin + alph_h - 30;
	draw_set_text(color,f_name,fa_center,fa_middle);
	draw_text(x_origin + quarter_w,position_ready,ready);
	draw_sprite_ext(sA,0,x_origin + quarter_w + (ready_length/2) + 20,position_ready,3,3,0,c_white,1);
}

