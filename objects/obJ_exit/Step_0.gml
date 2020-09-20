if (place_meeting(x,y,obj_player))
{
	signal = 1;
}
else
{
	signal = 0;
}

if (color = 1)
{
	global.signal_white = signal;
}
else
{
	global.signal_black = signal;
}