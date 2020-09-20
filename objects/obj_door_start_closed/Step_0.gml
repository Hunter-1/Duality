if (button.signal == 1)
{
	door_open = 1;
}
else
{
	door_open = 0;
}

if (door_open = 1)
{
	image_speed = 1;
	if (image_index == 4)
	{
		image_speed = 0;
	}
}
if (door_open = 0)
{
	image_speed = -1;
	if (image_index == 0)
	{
		image_speed = 0;
	}
}