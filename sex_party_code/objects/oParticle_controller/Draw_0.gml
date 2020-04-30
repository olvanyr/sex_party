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


/*
var array_len= array_height_2d(global.effect_splash);
if global.effect_splash[0,0] != noone
{
	for(var i = 0; i < array_len;i++)
	{
		if layer_sprite_exists("Assets",global.effect_splash[i,4])
		{
			layer_sprite_destroy(global.effect_splash[i,4]);
		}
		global.effect_splash[i,4] = layer_sprite_create("Assets",global.effect_splash[i,2],global.effect_splash[i,3],sSplash);
		var sprite = global.effect_splash[i,4];
		layer_sprite_index(sprite, 3);
		layer_sprite_speed(sprite,0);
		layer_sprite_blend(sprite,global.effect_splash[i,0]);
		layer_sprite_xscale(sprite,2);
		layer_sprite_yscale(sprite,2);
		layer_sprite_angle(sprite,global.effect_splash[i,1]);
	}
}

