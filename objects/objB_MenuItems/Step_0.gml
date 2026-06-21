

if (isSelected) {
   if (instance_exists(oText)) {
      if (oText.isDone && global.keyActionPressed) {
         with oText instance_destroy();
         instance_create(x, y, objB_EnemyTurn);
         instance_destroy();
      }
   }

   exit;
}

if (global.keyBack) {
   instance_destroy();
   objBattle.menu = 0;
}

if      keyboard_check_pressed(vk_up)    {pos--; audio_play_sound(snd_squeak, 0, false);}
else if keyboard_check_pressed(vk_down)  {pos++; audio_play_sound(snd_squeak, 0, false);}
else if keyboard_check_pressed(vk_right) {pos+=3; audio_play_sound(snd_squeak, 0, false);}
else if keyboard_check_pressed(vk_left)  {pos-=3; audio_play_sound(snd_squeak, 0, false);}

max_pos = ds_list_size(global.items);
 
if pos > max_pos-1
   pos = max_pos-1
   
if pos < 0
   pos = 0
   
page = floor(pos / 6);

if (global.keyActionPressed) {
   var item = ds_list_find_value(global.items, pos);
   
   oText = instance_create(56, 270, objText)
   oText.message = "* Вы съели /y" + item[0] + ". * Восстановили /g" + string(item[1]) + " HP.";
   oText.canSkip = true;
   
   global.plrHp += item[1];
   global.plrHpKarma += item[1];
   if (global.plrHp > global.plrHpMax) {
      global.plrHp = global.plrHpMax;
      global.plrHpKarma = global.plrHp;
   }
      
   audio_play_sound(snd_heal, 0, false);
   
   ds_list_delete(global.items, pos);
   
   isSelected = true;
   
   visible = false;
}

