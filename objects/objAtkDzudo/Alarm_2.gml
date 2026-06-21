if (index >= punches) {
   objB_Vanya.FadeAway = false;
   instance_destroy();
   exit;
} else {
   alarm[2] = 15;
}

var o = instance_create(oBorder.x, oBorder.y, objPunch);
o.Type = punch[index];

if (o.Type == 2)
   o.image_xscale = -1;

index++;



