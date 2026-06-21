

draw_set_alpha(alpha);

draw_set_font(fntMain);
draw_set_color(color);

draw_set_halign(fa_center);
draw_text(x, y, string_hash_to_newline(text));
draw_set_halign(fa_left);

draw_set_color(c_white);
draw_set_alpha(1);

