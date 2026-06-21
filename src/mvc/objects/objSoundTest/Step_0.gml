if (keyboard_check_pressed(vk_left)) {
   pos--;
   audio_play_sound(snd_squeak, 0, false);
} else if (keyboard_check_pressed(vk_right)) {
   pos++;
   audio_play_sound(snd_squeak, 0, false);
}

if (pos < snd_squeak)
   pos = sfx_frypan;
   
if (pos > sfx_frypan)
   pos = snd_squeak;
   
if (global.keyActionPressed) {
   audio_stop_all();
   audio_play_sound(pos, 0, false);
   
   if (counter == 0 && pos == 5) counter = 1;
   else if (counter == 1 && pos == 10) counter = 2;
   else if (counter == 2 && pos == 18) counter = 3;
   else if (counter == 3 && pos == 18) counter = 4;
   else if (counter == 4 && pos == 15) counter = 5;
   else if (counter == 5 && pos == 24) {
      audio_stop_all();
      room_goto(rm_creepy);
   } 
   else counter = 0;
}

if (global.keyBackPressed) {
   audio_stop_all();
   room_goto(rm_main_menu);
}
   
   

