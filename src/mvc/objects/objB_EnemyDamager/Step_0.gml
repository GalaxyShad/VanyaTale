if (afterCreate) {
   if (AccuracyFactor < 0.24) {
       oDmgDisplay = instance_create(x, y, objB_DmgDisplay);
       oDmgDisplay.Value = 0;
       
       visible = false;
    } else {
      audio_play_sound(snd_laz, 0, false);
    }
    
    afterCreate = false;
}

