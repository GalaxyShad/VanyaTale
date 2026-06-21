

var o = instance_create(x, y, objPunchEyeSfx);
o.image_index = punch[index] - 1;

index++;

if (index >= punches) {
   index = 0;
   alarm[2] = 50;
} else {
   alarm[1] = 13;
}

