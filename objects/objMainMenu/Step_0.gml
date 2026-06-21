if (keyboard_check_pressed(vk_up)) {
   pos--;
   audio_play_sound(snd_squeak, 0, false);
} else if (keyboard_check_pressed(vk_down)) {
   pos++;
   audio_play_sound(snd_squeak, 0, false);
}
   
if (pos < 0)
   pos = 3;
   
if (pos > 3)
   pos = 0;
   
if (pos == 1) {
   if keyboard_check(vk_right) && global.tick % 3 == 0
    {
        audio_master_gain(audio_get_master_gain(0) + 0.01  );
        
    }
    if keyboard_check(vk_left) && global.tick % 3 == 0
    {
        audio_master_gain(audio_get_master_gain(0) - 0.01 );
        
    }
    
    if (audio_get_master_gain(0) > 1)
       audio_master_gain(1);
    if (audio_get_master_gain(0) < 0)
       audio_master_gain(0);
}

if (pos == 2) {
   if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left)
    {
        window_set_fullscreen(!window_get_fullscreen());
    }
}

if (global.keyActionPressed) {
   scr_save_game();

   audio_play_sound(snd_select, 0, false);

   if (pos == 0) room_goto_next();
   else if (pos == 3) game_end();
}

