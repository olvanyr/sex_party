var array_len= array_height_2d(effect_splash);
if effect_splash[0,0] != noone
{
	for(var i = 0; i < array_len ;i++)
	{
		draw_sprite_ext(sSplash,5,effect_splash[i,2],effect_splash[i,3],2,2,effect_splash[i,1],effect_splash[i,0],1);
	}
}
var array_len= array_height_2d(effect_move);
if effect_move[0,0] != noone
{
	for(var i = 0; i < array_len ;i++)
	{
		draw_sprite_ext(sAura_decomposition,3,effect_move[i,2],effect_move[i,3],2,2,effect_move[i,1],effect_move[i,0],1);
	}
}