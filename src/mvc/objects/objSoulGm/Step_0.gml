if (created) {
   if gm audio_stop_all();
   
   audio_play_sound(snd_break1, 0, false);
   created = false;
}

