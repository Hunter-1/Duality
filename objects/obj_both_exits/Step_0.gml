if (global.signal_black) && (global.signal_white) && (keyboard_check(ord("E")))
{
	with (obj_player)
	{
		if (global.hascontrol)
		{
			global.signal_black = 0;
			global.signal_white = 0;
			global.hascontrol = false;
			script_transition(TRANS_MODE.NEXT)
		}
	}
}