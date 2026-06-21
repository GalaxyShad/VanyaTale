if (created) {
   if (image_index == 1) {
       
       x -= 10;
    } else {
       x += 10;
    }
    created = false;
}

image_xscale += 1.00;
image_yscale = image_xscale;

image_alpha = 3 - image_xscale / 5;

if (image_alpha <= 0) {
   instance_destroy();
}

