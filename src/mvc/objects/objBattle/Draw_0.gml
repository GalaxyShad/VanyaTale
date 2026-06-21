

draw_set_font(fntB_UI);

if (DefPowerTimer > 0) draw_set_color(c_lime);
else draw_set_color(c_red);

if (DefPowerTimer > 0)
   draw_text(500, 16, string_hash_to_newline("DEF+ " + string(abs(DefPowerTimer))));
else if (DefPowerTimer < 0)
   draw_text(500, 16, string_hash_to_newline("DEF- " + string(abs(DefPowerTimer))));


if (AtkPowerTimer > 0) draw_set_color(c_lime);
else draw_set_color(c_red);

if (AtkPowerTimer > 0)
   draw_text(500, 48, string_hash_to_newline("ATK+ " + string(abs(AtkPowerTimer))));
else if (AtkPowerTimer < 0)
   draw_text(500, 48, string_hash_to_newline("ATK- " + string(abs(AtkPowerTimer))));


draw_set_colour(c_white);




var hud_x = 34;
var hud_y = 398;
var hp_text = string(floor(global.plrHpKarma)) + " / " + string(global.plrHpMax);

draw_text(hud_x,  hud_y, string_hash_to_newline(global.plrName));
hud_x += string_width(string_hash_to_newline(global.plrName)) + 24;

draw_sprite(sprBattleUiHp, 0, hud_x, hud_y);
hud_x += 32;

draw_set_colour(c_red);
draw_rectangle(hud_x, hud_y, hud_x+global.plrHpMax, hud_y+21, false);
draw_set_colour(c_fuchsia);
draw_rectangle(hud_x, hud_y, hud_x+global.plrHpKarma, hud_y+21, false);
draw_set_colour(c_yellow);
draw_rectangle(hud_x, hud_y, hud_x+global.plrHp, hud_y+21, false);
draw_set_colour(c_white);
hud_x += global.plrHpMax + 16;

if (floor(global.plrHpKarma) != global.plrHp) draw_set_color(c_fuchsia);
draw_text(hud_x, hud_y, string_hash_to_newline(hp_text));


hud_x += string_width(string_hash_to_newline(hp_text)) + 18;

draw_set_colour(c_white);
draw_text(hud_x, hud_y, string_hash_to_newline("try: " + string(global.try)));


draw_sprite(sprBattleButtons, 0 + 4 * (menu_pos == 0 && menu == MENU_MAIN), 33,  431);
draw_sprite(sprBattleButtons, 1 + 4 * (menu_pos == 1 && menu == MENU_MAIN), 186, 431);
draw_sprite(sprBattleButtons, 2 + 4 * (menu_pos == 2 && menu == MENU_MAIN), 346, 431);
draw_sprite(sprBattleButtons, 3 + 4 * (menu_pos == 3 && menu == MENU_MAIN), 501, 431);

if (menu == MENU_MAIN) {
    var soul_pos_x;
    switch (menu_pos) {
           case 0: soul_pos_x = 33; break;
           case 1: soul_pos_x = 186; break;
           case 2: soul_pos_x = 346; break;
           case 3: soul_pos_x = 501; break;
    }
    draw_sprite(sprB_Soul, 0, soul_pos_x+16, 431+21);
}

draw_set_colour(c_white);




