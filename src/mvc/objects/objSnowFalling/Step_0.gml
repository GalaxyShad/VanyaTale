vspeed += 0.15;

image_angle += 1;

if (y > objB_Border.bottom-5) {
   vspeed = 0;
   image_alpha -= 0.1;
}

if (image_alpha <= 0)
   instance_destroy();

