

draw_set_halign(fa_center);
draw_set_font(fntMain);

draw_set_color(c_yellow);


draw_text(x, y,  string_hash_to_newline("< " + hex[pos / 16] + hex[pos % 16] + " >#" + audio_get_name(pos)));

draw_set_color(c_gray);
draw_text(x, y+128,  string_hash_to_newline("Shift / X - to return back to menu"));

draw_set_halign(fa_left);

draw_set_color(c_white);

