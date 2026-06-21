if (global.keyBackPressed) {
   instance_destroy();
   objBattle.menu = 0;
} else if (global.keyActionPressed) {
   audio_play_sound(snd_select, 0, false);
   instance_destroy();
   instance_create(x, y, objB_Admire);
}
   

