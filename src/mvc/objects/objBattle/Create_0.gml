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


global.plrName = "fan of vanya";
global.plrHpMax = 100;
global.plrHp = global.plrHpMax;
global.plrHpKarma = global.plrHpMax;

global.plrAtk = 1000;
global.plrDef = 1;

global.plrMode = 0;

DefPowerTimer = 0;
AtkPowerTimer = 0;

global.enemyHpMax = 12000;
//global.enemyHpMax = 50;

global.enemyHp = global.enemyHpMax;
global.enemyDef = 30;



global.enemies[0] = "Ваня aka Кумир";


global.msg[0] = "* Loading Dialogue... ERR!! Index out of range!";
global.msg[1] = "* Вы понимаете, что это была очень легкая атака";
global.msg[2] = "* Вы поражаетесь навыкам кодинга Вани";
global.msg[3] = "* Fqp'v gxgp nqqm hqt vjg ЫГЗУК_ЫУСКУЕ_СЩВУ!";
global.msg[4] = "* Загляните как нить на мой канал :D#www.youtube.com/@GalaxyShad102";
global.msg[5] = "* Крик марк бластеров наполняет вас ОПТИМИСТИЧНОСТЬЮ";
global.msg[8] = "* У Вани 500 знаков в минуту, а у Вас?";
global.msg[7] = "* Loading Dialogue... ERR!! Index out of range!";
global.msg[6] = "* Как-то раз, на конференции, Ваня сделал презу во время выступления других участников";
global.msg[9] = "* Вы вообще читаете эти#сообщения?";
global.msg[10] = "* Перед вами Senior Apex#Nagibator.";
global.msg[11] = "* Как круто вы играете O_O";
global.msg[12] = "* Забудьте, что я сказал на прошлом ходу";
global.msg[13] = "* Waiting for call...";
global.msg[14] = "* Фразы кончаются, дальше будет реклама.";
global.msg[15] = "* Также попробуйте Sonic 1 PC Recreation";
global.msg[16] = "* Также попробуйте Mark The Game";
global.msg[17] = "* Также попробуйте Zuma Deluxe HD";
global.msg[18] = "* www.youtube.com/watch?v=dQw4w9WgXcQ";
global.msg[19] = "* Просто продолжай восхищаться";


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







