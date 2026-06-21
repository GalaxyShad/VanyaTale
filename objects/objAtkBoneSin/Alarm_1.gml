
var rbot = instance_create(oBorder.right+5, oBorder.bottom-5, objBone);
var rtop = instance_create(oBorder.right+5, oBorder.top+5, objBone);
rtop.image_angle = 180;

rtop.hspeed = -6;
rbot.hspeed = -6;

rbot.Scale = 4 - 4 * sin(tick);
rtop.Scale = 4 + 4 * sin(tick);


tick += 0.35;

alarm[1] = 3;

