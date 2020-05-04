var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);

if state == true
{
	var c = c_black;
	draw_set_alpha(0.6);
	draw_rectangle_color(-10,-10,view_w,view_h,c,c,c,c,false);
	draw_set_alpha(1);
	
}