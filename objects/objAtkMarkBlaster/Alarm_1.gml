var _ang = random(360);

var oBlaster = instance_create(oSoul.x + 150 * cos(degtorad(_ang)), oSoul.y + 150 * sin(degtorad(_ang)), objMarkBlaster);

oBlaster.Angle = point_direction(oBlaster.x, oBlaster.y, oSoul.x, oSoul.y) + 90;
//oBlaster.image_xscale = 2;

alarm[1] = 27;

