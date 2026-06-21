draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_red);
draw_set_font(fntTimesNewRoman);

var _x = (Scale - 0.75) / 1.25;

draw_set_alpha(sin(_x));

if (radtodeg(_x) > 180) {
   instance_destroy();
}

draw_text_transformed(x, y, string_hash_to_newline("YOU DIED"), Scale, Scale, 0);

draw_set_alpha(1);

draw_set_halign(fa_left);
draw_set_valign(fa_left);

