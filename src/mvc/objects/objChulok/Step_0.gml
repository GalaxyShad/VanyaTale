tick += 0.055;

image_angle = sin(tick) * 5;

image_xscale = Dir;

var partOffsetX = -45 * Dir;
var partOffsetY = -34;

oPart2.image_xscale = image_xscale;
oPart2.x = x + partOffsetX * cos(degtorad(image_angle)) + partOffsetY * sin(degtorad(image_angle));;
oPart2.y = y + partOffsetY * cos(degtorad(image_angle)) - partOffsetX * sin(degtorad(image_angle));

if y >= objB_Border.bottom+64
   instance_destroy();

