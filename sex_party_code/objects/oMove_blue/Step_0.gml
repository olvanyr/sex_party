x = creator.x;
y = creator.y;

timer ++;
if timer > lifespawn
{
	if creator.blue > 0 && creator.blue_score == blue_score
	{
		creator.blue --;
	}
	instance_destroy();
}