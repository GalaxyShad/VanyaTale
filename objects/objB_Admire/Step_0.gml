var delta = (scale - image_xscale);

image_xscale += min(max(scale, -delta / 2), delta / 2);
image_alpha = image_xscale;


if (!cursor_stop)
   cursor_xsp += 0.75;
else 
   cursor_xsp = 0;
   
cursor_x += cursor_xsp;
   
multiplier = (280 - abs(x - cursor_x )) / 280;

if (oEnemyDmgr != 0 && !instance_exists(oEnemyDmgr)) {
  scale = 0;
  if (image_xscale == 0) {
     instance_create(x, y, objB_EnemyTurn); 
     instance_destroy();
  }
} else if (oEnemyDmgr == 0 && (global.keyActionPressed || cursor_x > x + 280)) {
   cursor_stop  = true;
   
   oEnemyDmgr = instance_create(x, y, objB_EnemyDamager);
   oEnemyDmgr.AccuracyFactor = multiplier;
} 




