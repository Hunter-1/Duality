//Controls
if (global.hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);
key_jump_released = keyboard_check_released(vk_space) || keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));

//Moving and Collisions

var movement = key_right - key_left;
vsp += grv;
hsp = movement * wlksp;
}
else
{
	key_jump = 0;
	key_right = 0;
	key_left = 0;
	key_jump_released = 0;
	hsp = 0;
	vsp = 0;
}

//Pushing Boxes
if (place_meeting(x-2,y,obj_box)) && (key_left) && place_meeting(x,y+1,obj_collision)
{
	i = instance_place(x-2,y,obj_box);
	with i
	{
		if !place_meeting(x-3,y,obj_collision)
		{
			x -= 3;
		}
	}
}

if (place_meeting(x+2,y,obj_box)) && (key_right) && place_meeting(x,y+1,obj_collision)
{
	i = instance_place(x+2,y,obj_box);
	with i
	{
		if !place_meeting(x+3,y,obj_collision)
		{
			x += 3;
		}
	}
}

//Horizontal Collisions

if (place_meeting(x+hsp,y,obj_collision))
{
	while (!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

//Jumping

if (place_meeting(x,y+1,obj_collision)) && (key_jump)
{
	vsp =-8;
}
if (!place_meeting(x,y+1,obj_collision)) && (key_jump_released) && (!vsp > 0)
{
	jumped = 1;
	vsp = 0;
}

//Vertical Collisions

if (place_meeting(x,y+vsp,obj_collision))
{
	jumped = 0;
	while (!place_meeting(x,y+sign(vsp),obj_collision))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

//Apply all movement [ALWAYS AT THE END]
x += hsp;
y += vsp;