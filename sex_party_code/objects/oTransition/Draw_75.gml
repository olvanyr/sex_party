var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);

if open == false
{
	if once == false
	{
		once = true;
		r = max(view_w,view_h);
	}
	r -= 50;
	if r <= 0 instance_destroy();
}

if open == true
{
	if once == false
	{
		once = true;
		r = 0;
	}
	r += 50;
	if r >= max(view_w,view_h) room_goto(next_room);
}

draw_circle_color(view_w/2,view_h/2,r,c_black,c_black,0);
show_debug_message("rayon : " + string(r));
show_debug_message("open : " + string(open));
