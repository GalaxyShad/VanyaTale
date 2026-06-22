audio_stop_all();


audio_play_sound(musBattleTemp, 0, true);

Progress = 0;

global.prev_atk = noone;


global.items = ds_list_create();
scr_add_item(2);
scr_add_item(1);
scr_add_item(1);
scr_add_item(1);
scr_add_item(0);
scr_add_item(0);
scr_add_item(0);
scr_add_item(0);

global.plrName = global.i18n.playerName;
global.plrHpMax = (!global.no_hit_mode) ? 100 : 1;
global.plrHp = global.plrHpMax;
global.plrHpKarma = global.plrHpMax;

global.plrAtk = 1000;
global.plrDef = 1;

global.plrMode = 0;

DefPowerTimer = 0;
AtkPowerTimer = 0;

global.enemyHpMax = 12000;
//global.enemyHp = 50;

global.enemyHp = global.enemyHpMax;
global.enemyDef = 30;

global.enemies[0] = global.i18n.battleEnemyName;

global.msg[0] = global.i18n.battleBox.msg0;
global.msg[1] = global.i18n.battleBox.msg1;
global.msg[2] = global.i18n.battleBox.msg2;
global.msg[3] = global.i18n.battleBox.msg3;
global.msg[4] = global.i18n.battleBox.msg4;
global.msg[5] = global.i18n.battleBox.msg5;
global.msg[8] = global.i18n.battleBox.msg8;
global.msg[7] = global.i18n.battleBox.msg7;
global.msg[6] = global.i18n.battleBox.msg6;
global.msg[9] = global.i18n.battleBox.msg9;
global.msg[10] = global.i18n.battleBox.msg10;
global.msg[11] = global.i18n.battleBox.msg11;
global.msg[12] = global.i18n.battleBox.msg12;
global.msg[13] = global.i18n.battleBox.msg13;
global.msg[14] = global.i18n.battleBox.msg14;
global.msg[15] = global.i18n.battleBox.msg15;
global.msg[16] = global.i18n.battleBox.msg16;
global.msg[17] = global.i18n.battleBox.msg17;
global.msg[18] = global.i18n.battleBox.msg18;
global.msg[19] = global.i18n.battleBox.msg19;

cur_msg = 0;

text = noone;

border = instance_create(x, y, objB_Border);

enemyTurn = false;

MENU_MAIN = 0;
MENU_ADMIRE = 1;
MENU_CASE = 2;
MENU_ITEM = 3;

menu = MENU_MAIN;

menu_pos = 0;







