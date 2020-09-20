keyboard_up = (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))
keyboard_down = (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S")))
keyboard_enter = (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(ord("E"))) || (keyboard_check_pressed(vk_space))

if (menu_control)
{
	if (keyboard_up)
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_down)
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyboard_enter)
	{
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1: script_transition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}
}