

//follow the player
x = creator.x;
y = creator.y;

// keep track of itself to the creator

timer ++;
if timer > lifespawn
{
	if object_index == oMove_blue
	{
		if creator.blue > 0 && creator.blue_score == blue_score
		{
			creator.blue --;
		}
	}
	instance_destroy();
}