w = display_get_gui_width();
h = display_get_gui_height();

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	REDOROOM
}
mode = TRANS_MODE.OFF;
percent = 0.01;
target = room;