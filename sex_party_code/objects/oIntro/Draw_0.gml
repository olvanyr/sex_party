
for(var i = 0; i < array_length_1d(global.start);i++)
{
	if global.start[i] || global.enter[i] || global.rng[i]
	{
		if show
		{
			room_goto_next();
		}
		show = true;
	}
	if global.back[i]
	{
		show = false;
	}
}

if show
{
	if !once
	{
		once = true;
		transition = instance_create_layer(0,0,"Instances",oTransition)
		with transition 
		{
			open = true;
			next_room = 1000000;
		}
	}
	if !instance_exists(transition)
	{
		var alph_w = room_width/2;
		var alph_h = room_height/2;
		var color = c_black;
		draw_rectangle_color(-10,-10,room_width + 20,room_height + 20,color,color,color,color,0);
		var color = c_white;
		draw_set_text(color,fIntro,fa_center,fa_middle);
		draw_text(alph_w,alph_h,text);
	}
}