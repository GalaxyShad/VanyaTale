action_inherited();

oMain.image_yscale = Scale;
oMain.image_angle = image_angle;
oMain.Type = Type;

var partOffsetX = 0;
var partOffsetY = -6;

oMain.x = x + partOffsetX * cos(degtorad(image_angle)) + partOffsetY * sin(degtorad(image_angle));;
oMain.y = y + partOffsetY * cos(degtorad(image_angle)) - partOffsetX * sin(degtorad(image_angle));

oEnd.image_angle = image_angle;
oEnd.Type = Type;

partOffsetX = 0;
partOffsetY = -6 -6 * Scale - 6;

oEnd.x = x + partOffsetX * cos(degtorad(image_angle)) + partOffsetY * sin(degtorad(image_angle));;
oEnd.y = y + partOffsetY * cos(degtorad(image_angle)) - partOffsetX * sin(degtorad(image_angle));








