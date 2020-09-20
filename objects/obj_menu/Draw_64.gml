draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++)
{
	var txt = menu[i];
	if (menu_cursor == i)
	{
	var col = c_white;
	}
	else
	{
	var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(col);
	gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
	draw_text(xx,yy,txt);
	gpu_set_blendmode(bm_normal);
}
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_font(fnt_title);
gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
draw_text(400,200,"Duality");
gpu_set_blendmode(bm_normal);