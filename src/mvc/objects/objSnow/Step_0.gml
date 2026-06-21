if (!Push) exit;

vspeed += 0.35;

image_angle += 1;

if (y +  sprite_height / 2 > objB_Border.bottom-5)
   instance_destroy();

