action_sound(sound10_snd_break2, 0);

visible = false;

var lt = instance_create(x, y, objSoulGmSfx);
var rt = instance_create(x, y, objSoulGmSfx);
var lb = instance_create(x, y, objSoulGmSfx);
var rb = instance_create(x, y, objSoulGmSfx);

lb.image_index = 1;
lt.image_index = 2;
rt.image_index = 3;
rb.image_index = 4;

lb.hspeed = -5;
lt.hspeed = -6;
rt.hspeed = 6;
rb.hspeed = 5;

lb.vspeed = -9;
lt.vspeed = -12;
rt.vspeed = -12;
rb.vspeed = -9;

if gm
   alarm[1] = 30;

