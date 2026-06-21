

if ((y + sprite_get_height(sprite_index) / 2 + vspeed) >= (objB_Border.bottom - 6)) {
   instance_destroy();
} 
   
   
if (gnd) {
   vspeed = 0;
} else 
  vspeed += 0.65;

//if (image_alpha <= 0)
//   instance_destroy();

