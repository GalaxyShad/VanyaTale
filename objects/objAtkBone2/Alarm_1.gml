
var rbot = instance_create(oBorder.right+5, oBorder.bottom-5, objBone);
var rtop = instance_create(oBorder.right+5, oBorder.top+5, objBone);
rtop.image_angle = 180;

rtop.hspeed = -10;
rbot.hspeed = -10;

rbot.Scale = 0.10;
rtop.Scale = 10;


var lbot = instance_create(oBorder.left+5, oBorder.bottom-5, objBone);
var ltop = instance_create(oBorder.left+5, oBorder.top+5, objBone);
ltop.image_angle = 180;

ltop.hspeed = 10;
lbot.hspeed = 10;

lbot.Scale = 0.10;
ltop.Scale = 10;


alarm[1] = 20;

