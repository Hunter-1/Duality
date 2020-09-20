vsp += grv;

//Horizontal Collisions

if (place_meeting(x+hsp,y,obj_collision))
{
	while (!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x += sign(hsp);
	}
	hsp = 0;
}


x += hsp;

//Vertical Collisions

if (place_meeting(x,y+vsp,obj_collision))
{
	while (!place_meeting(x,y+sign(vsp),obj_collision))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;