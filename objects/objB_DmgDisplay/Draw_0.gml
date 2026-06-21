
var hb_left = 320 - 100;
var hb_top = objB_Vanya.y + 30;

hpBar -= min((hpBar - global.enemyHp), (hpBar - global.enemyHp) / 2);

draw_set_color(c_red);
draw_rectangle(hb_left, hb_top, hb_left + 200, hb_top+20, false);
draw_set_color(c_lime);
draw_rectangle(hb_left, hb_top, hb_left + (hpBar / global.enemyHpMax)*200, hb_top+20, false);

//draw_set_font(fntMain);
//draw_text(0,0,Value);



draw_set_color(c_red);
draw_set_font(global.fntDmg);
draw_set_halign(fa_center);


if (Value == 0) draw_sprite(sprFntMiss, 0, x, y);
else            draw_text(x, y, string_hash_to_newline(floor(Value)));


draw_set_halign(fa_left);
draw_set_color(c_white);

