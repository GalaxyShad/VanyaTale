action_inherited();
oBorder.Width = 240;
oBorder.Height = 260;

oBorder.y -= 60;

alarm[0] = 430;

snow = 0;
index = 0;

for (var i = oBorder.x - oBorder.Width / 2; i < oBorder.x + oBorder.Width / 2; i+=12) {
    snow[index] = instance_create(i, oBorder.y - oBorder.Height / 2, objSnow);
    index++;
}

alarm[1] = 350;

