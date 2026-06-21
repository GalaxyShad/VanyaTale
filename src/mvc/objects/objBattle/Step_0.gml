
var super_secret_code = "SUPER_SECRET_CODE!!! 05 0A 12 12 0F 18";

if (global.enemyHp < 0)
   global.enemyHp = 0;


if (menu == MENU_MAIN && !instance_exists(objB_EnemyTurn)) {
   if (!instance_exists(text)) {
      text = instance_create(56, 270, objText)
      
      if (Progress < array_length_1d(global.msg))
         curMsg = Progress;
         
      text.message = global.msg[curMsg];
   }
   

    if keyboard_check_pressed(vk_left) {
       audio_play_sound(snd_squeak, 0, false);
       menu_pos--;
    } else if keyboard_check_pressed(vk_right) {
       audio_play_sound(snd_squeak, 0, false);
       menu_pos++;
    }
       
    if menu_pos < 0
       menu_pos = 3;
       
    if menu_pos > 3
       menu_pos = 0;
       
       
    if (global.keyActionPressed) {
       audio_play_sound(snd_select, 0, false);
       menu = menu_pos + 1;
       switch (menu) {
          case MENU_ADMIRE:
               with text instance_destroy();
               instance_create(x, y, objB_MenuEnemy);
               break;
          case MENU_CASE:
               with text instance_destroy();
               instance_create(border.x, border.y, objB_MenuRoll);
               break;
          case MENU_ITEM:
               if (ds_list_size(global.items) <= 0) {
                  menu = 0;
               } else {
                   with text instance_destroy();
                   instance_create(x, y, objB_MenuItems);
               }
               break;
          default:
               menu = 0;
               break;
       }
     
       
    }
}

if (instance_exists(objB_EnemyTurn)) {
   menu = -1;
} 

if (global.plrHp > global.plrHpMax)      global.plrHp = global.plrHpMax;
if (global.plrHpKarma > global.plrHpMax) global.plrHpKarma = global.plrHpMax;
   
if (global.plrHpKarma <= 0 && global.plrHp <= 1) {
   global.try++;
   scr_save_game();
   room_goto(rm_game_over);
}

if (global.plrHpKarma < global.plrHp)
   global.plrHpKarma = global.plrHp;

   
if (global.plrHpKarma > global.plrHp) {

    var d = global.plrHp - global.plrHpKarma;
    global.plrHpKarma += min(max(d, -d / 100), d / 100);
}



if DefPowerTimer == 0
   global.plrDef = 1;
else if DefPowerTimer > 0 && global.tick % 30 == 0 && instance_exists(objB_EnemyTurn) && !instance_exists(objB_Dialog) {
   DefPowerTimer -= 1;
   global.plrDef = 1.5;
} else if DefPowerTimer < 0 && global.tick % 30 == 0 && instance_exists(objB_EnemyTurn) && !instance_exists(objB_Dialog) {
   DefPowerTimer += 1;
   global.plrDef = 0.5;
}
   
if AtkPowerTimer == 0
   global.plrAtk = 1000;
else if AtkPowerTimer > 0 && global.tick % 30 == 0 && instance_exists(objB_EnemyTurn) && !instance_exists(objB_Dialog) {
   AtkPowerTimer -= 1;
   global.plrAtk = 1300;
} else if AtkPowerTimer < 0 && global.tick % 30 == 0 && instance_exists(objB_EnemyTurn) && !instance_exists(objB_Dialog) {
   AtkPowerTimer += 1;
   global.plrAtk = 800;
}


