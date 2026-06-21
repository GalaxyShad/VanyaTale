
var oBlaster;

 
switch(step) { 
    case 0: {
         oBlaster = instance_create(oBorder.x, oBorder.y - 100, objMarkBlaster);
         
         oBlaster = instance_create(oBorder.x + 64, oBorder.y + 100, objMarkBlaster);
         oBlaster.Angle = 180;
         
         break;
    }
    case 1: {
         oBlaster = instance_create(oBorder.x - 64, oBorder.y - 100, objMarkBlaster);
    
         oBlaster = instance_create(oBorder.x - 100, oBorder.y - 64, objMarkBlaster);
         oBlaster.Angle = 90;
         oBlaster = instance_create(oBorder.x + 100, oBorder.y + 64, objMarkBlaster);
         oBlaster.Angle = -90;
         
         break;
    }
    case 2: {
         oBlaster = instance_create(oBorder.x - 100, oBorder.y, objMarkBlaster);
         oBlaster.Angle = 90;
         
         oBlaster = instance_create(oBorder.x, oBorder.y-100, objMarkBlaster);

         
         break;
    }
    case 3: {
         oBlaster = instance_create(oBorder.x - 64, oBorder.y - 100, objMarkBlaster);
         
         oBlaster = instance_create(oBorder.x + 64, oBorder.y + 100, objMarkBlaster);
         oBlaster.Angle = 180;
         
         oBlaster = instance_create(oBorder.x - 100, oBorder.y - 64, objMarkBlaster);
         oBlaster.Angle = 90;
         oBlaster = instance_create(oBorder.x + 100, oBorder.y + 64, objMarkBlaster);
         oBlaster.Angle = -90;
         
         break;
    }
    case 4: {
         oBlaster = instance_create(oBorder.x, oBorder.y - 100, objMarkBlaster);
         
         oBlaster = instance_create(oBorder.x - 100, oBorder.y - 64, objMarkBlaster);
         oBlaster.Angle = 90;
         
         break;
    }
    case 5: instance_destroy(); break;
}  


alarm[1] = 40;

step++;

