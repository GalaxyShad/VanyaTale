image_yscale += 0.25;

if (image_yscale >= 1) {
   instance_create(room_width / 2, room_height / 2, object70);
   instance_destroy();
}

