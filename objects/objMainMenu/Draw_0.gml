

draw_set_halign(fa_center);
draw_set_font(fntMain);



if (pos == 0) draw_set_color(c_yellow); else draw_set_color(c_white);
f(0, global.i18n.menu.play);

if (pos == 1) draw_set_color(c_yellow); else draw_set_color(c_white);
f(1, global.i18n.menu.noHitMode + ": " + (global.no_hit_mode ? global.i18n.general.on : global.i18n.general.off));

if (pos == 2) draw_set_color(c_yellow); else draw_set_color(c_white);
f(2, global.i18n.menu.volume + " " + string(floor(audio_get_master_gain(0)*100)) + "%");

if (pos == 3) draw_set_color(c_yellow); else draw_set_color(c_white);
f(3, global.i18n.menu.fullscreen + ": " + (window_get_fullscreen() ? global.i18n.general.on : global.i18n.general.off));

if (pos == 4) draw_set_color(c_yellow); else draw_set_color(c_white);
f(4, global.i18n.menu.language + ": " + scr_i18n_lang_get());

if (pos == 5) draw_set_color(c_yellow); else draw_set_color(c_white);
f(5, global.i18n.menu.quit);

draw_set_halign(fa_left);

draw_set_color(c_white);

