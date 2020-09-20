if (place_meeting(x,y-1,obj_player)) || (place_meeting(x,y-1,obj_box))
{
	image_index = 1;
	signal = 1;
}
else
{
	image_index = 0;
	signal = 0;
}