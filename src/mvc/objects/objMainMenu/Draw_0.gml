

draw_set_halign(fa_center);
draw_set_font(fntMain);

if (pos == 0) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(x, y, string_hash_to_newline("Играть"));

if (pos == 1) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(x, y+32, string_hash_to_newline("Звук " + string(floor(audio_get_master_gain(0)*100)) + "%") );

if (pos == 2) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(x, y+64, string_hash_to_newline("Полный экран: " + string(window_get_fullscreen())));

if (pos == 3) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(x, y+96, string_hash_to_newline("Sound Test"));

if (pos == 4) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(x, y+96+32, string_hash_to_newline("Выход"));

draw_set_halign(fa_left);

draw_set_color(c_white);

