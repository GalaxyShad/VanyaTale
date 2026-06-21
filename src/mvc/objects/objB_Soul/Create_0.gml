image_speed = 0;

WIDTH  = sprite_get_width(sprite_index);
HEIGHT = sprite_get_height(sprite_index);

inv = 0;

xsp = 4;
ysp = 4;
yacc = 0.2;

jumping = false;
ground = false;

border = instance_find(objB_Border, 0);

CanMove = true;

