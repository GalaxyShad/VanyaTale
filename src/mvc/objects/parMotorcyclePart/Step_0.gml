vspeed += grv;

if (y + sprite_get_height(sprite_index) / 2 > objB_Border.bottom-5 && vspeed > 0)
   vspeed *= -0.55;

   
if (y - sprite_get_height(sprite_index) / 2 < objB_Border.top+5 && vspeed < 0)
   vspeed *= -0.55;
   
if (x + sprite_get_width(sprite_index) / 2 > objB_Border.right-5 && hspeed > 0)
   hspeed *= -0.55;
   
if (x - sprite_get_width(sprite_index) / 2 < objB_Border.left+5 && hspeed < 0)
   hspeed *= -0.55;

