x_origin = 0;
y_origin = 0;
var quarter_w = room_width/4;
var quarter_h = room_height/5; 

//draw name
var name = global.player_info[cn,2];
draw_set_text(c_name,f_name,fa_center,fa_middle);
draw_text(x_origin + quarter_w,y_origin + 10,name);