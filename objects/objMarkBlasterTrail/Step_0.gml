

tick += 0.1;

image_xscale = sin(tick) * Scale;
image_alpha = (image_xscale / Scale);

if (radtodeg(tick) > 90 && image_alpha <= 0.150)
   instance_destroy();
   

