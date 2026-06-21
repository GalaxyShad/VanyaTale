image_index = global.plrMode;

if (keyboard_check(vk_left) && CanMove)
   xsp =- 4;
else if (keyboard_check(vk_right) && CanMove)
   xsp = +4;
else 
   xsp = 0;
   
if (global.plrMode == 0) {
    if (keyboard_check(vk_up) && CanMove)
       ysp = -4;
    else if (keyboard_check(vk_down) && CanMove)
       ysp = +4;
    else 
       ysp = 0;
} else if (global.plrMode == 1) {
   if (!ground) {
      if (ysp <= -4) ysp += 0.2;
      else if (ysp > -4 && ysp <= -1) ysp += 0.5;
      else if (ysp > -1 && ysp <= 0.5) ysp += 0.2;
      else if (ysp > 0.5 && ysp < 8) ysp += 0.6;
      else ysp += 0;
   } else {
      ysp = 0;
   }
   
   if (ground && keyboard_check(vk_up)) {
      jumping = true;
      ysp = -6;
      ground = false;
   } 
   
   if (jumping && !keyboard_check(vk_up) && ysp < -4) 
      ysp = -1;
      
   if (ground)
      jumping = false;
}
   
x += xsp;
y += ysp;
   
var left    = border.left   + border.THICK + WIDTH  / 2;
var right   = border.right  - border.THICK - WIDTH  / 2 + 1;
var top     = border.top    + border.THICK + HEIGHT / 2;
var bottom  = border.bottom - border.THICK - HEIGHT / 2 + 1;

x = min(max(x, left), right);
y = min(max(y, top), bottom);

if (y >= bottom ) ground = true;
else ground = false;


var oObstacle = instance_place(x, y, parHurtable);

if (place_meeting(x, y, oObstacle)) {
   if ((oObstacle.Type == 1 && ((x - xprevious) != 0 || (y - yprevious) != 0)) ||
       (oObstacle.Type == 2 && ((x - xprevious) == 0 && (y - yprevious) == 0)) ||
        oObstacle.Type == 0)  {
           if (!inv) {
              //if (global.plrHpKarma > global.plrHp && global.plrHp != 1)
              //   global.plrHpKarma -= oObstacle.Dmg;
           
              global.plrHp -= oObstacle.Dmg / global.plrDef;
              inv = 15;
              
              if (global.plrHp < 1)
                 global.plrHp = 1;
                 
              
           }
           global.plrHpKarma -= 1;
           
           audio_play_sound(snd_hurt, 0, false);
   }
}

if (inv > 0)
   inv--;

global.soul_x = x;
global.soul_y = y;


