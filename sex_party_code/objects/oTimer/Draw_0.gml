timer = get_timer()/1000000 - timer_start;


draw_set_text(c,fTimer,fa_left,fa_middle);
var half_string = string_width("00.00")/2;

if timer < 10 timer = "0"+string(timer);
draw_text((room_width/2) - half_string,room_height/2,timer);

if timer > game_time
{
	room_goto_next();
}