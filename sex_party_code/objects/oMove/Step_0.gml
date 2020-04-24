

//follow the player
x = creator.x;
y = creator.y;

// keep track of itself to the creator

timer ++;
if timer > lifespawn
{
	if creator.color[0] > 0 && creator.color_score[0] == color_score
	{
		creator.color[0] --;
	}
	instance_destroy();
}