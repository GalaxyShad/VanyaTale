tick += 0.5;


var bon = noone;  

if (step < 4) {
   if (step % 2 == 0) {

        for (var i = 0; i < 16; i++) {
            bon = instance_create(oBorder.right+5+i*16, oBorder.bottom-5, objBone);
            
            bon.Scale = 4*sin(i/5);
            bon.hspeed =- 6;
        }
    } else {
        for (var i = 0; i < 7; i++) {
            bon = instance_create(oBorder.right+5+i*16, oBorder.bottom-5, objBone);
            
            bon.Scale = 4*sin(i/2);
            bon.hspeed =- 6;
        }
    }
} else if step == 4 {
       bon = instance_create(oBorder.left-5, oBorder.bottom-5, objBone);
            
       bon.Scale = 5;
       bon.hspeed = 14;
       
       bon = instance_create(oBorder.left-90, oBorder.top+5, objBone);
            
       bon.image_angle = 180;
       bon.Scale = 12;
       bon.hspeed = 12;
} else if step == 5 {

       bon = instance_create(oBorder.right+5, oBorder.bottom-5, objBone);
            
       bon.Type = 2;
       bon.Scale = 14;
       bon.hspeed =- 15;


       bon = instance_create(oBorder.right+130, oBorder.bottom-5, objBone);
            
       bon.Type = 1;
       bon.Scale = 14;
       bon.hspeed =- 15;
       
       
} else if step == 6 {
       bon = instance_create(oBorder.left-140, oBorder.bottom-5, objBone);
            
       bon.Type = 2;
       bon.Scale = 14;
       bon.hspeed = 14;
       
       bon = instance_create(oBorder.left-250, oBorder.bottom-5, objBone);
            
       bon.Type = 2;
       bon.Scale = 14;
       bon.hspeed = 14;
       
       bon = instance_create(oBorder.left-350, oBorder.bottom-5, objBone);
            
       bon.Type = 1;
       bon.Scale = 14;
       bon.hspeed = 14;
}

else 
  instance_destroy();


alarm[1] = 50;

step++;

