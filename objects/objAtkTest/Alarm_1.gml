var o = instance_create(oSoul.x + random_range(-100,100), oSoul.y + random_range(-100,100), objMarkBlaster);
o.Angle = point_direction(o.x, o.y, oSoul.x, oSoul.y) + 90;
o.image_xscale = 2;
alarm[1] = 50;

