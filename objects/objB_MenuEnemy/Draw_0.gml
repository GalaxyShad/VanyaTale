x = 62;
y = 287;

var _x = 62;
var _y = 287;
var right = 640 - 62;

draw_set_font(fntMain);
draw_set_colour(c_white);

draw_sprite(sprB_Soul, 0, x, y);
_x += 24;
draw_text(_x, y - 18, string_hash_to_newline("* " + global.enemies[0]));
_x += string_width(string_hash_to_newline("* " + global.enemies[0])) + 64;

var max_hp_size = (global.enemyHpMax / global.enemyHpMax) * 150;
var hp_size     = (global.enemyHp / global.enemyHpMax) * 150;


draw_set_colour(c_red);
draw_rectangle(_x, y - 8, _x+max_hp_size, y+8, false);
draw_set_colour(c_lime);
draw_rectangle(_x, y - 8, _x+hp_size, y+8, false);


