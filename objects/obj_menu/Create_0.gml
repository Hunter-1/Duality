gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 128;

menu_x = gui_width / 2;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_itemheight = font_get_size(fnt_menu);
menu_committed = -1;
menu_control = true;

menu[1] = "New Game";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 1;