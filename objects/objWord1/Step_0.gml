

if ((y + sprite_get_height(sprite_index) / 2 + vspeed) >= (objB_Border.bottom - 6) && !gnd) {
   audio_play_sound(snd_lithit, 0, false);
   y = (objB_Border.bottom - 6) - sprite_get_height(sprite_index) / 2;
   vspeed = 0;
   gnd = true;
} 
   
   
if (gnd) {
   vspeed = 0;

   image_xscale += 0.75;
   
   image_alpha = 3 - (image_xscale / 3);
} else if (allowFall)
  vspeed += 0.65;

if (image_alpha <= 0)
   instance_destroy();

