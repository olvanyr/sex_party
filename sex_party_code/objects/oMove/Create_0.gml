// init variable
lifespawn = 180;
timer = 0;

creator = noone;

//cosmetic
r = 0;
r_max = 100;
c = c_red;

outline = 0;

blue_score = 0;


//pick color

if object_index == oMove_blue c = c_blue;
if object_get_name(object_index) == oMove_red c = c_red;
if object_get_name(object_index) == oMove_green c = c_green;