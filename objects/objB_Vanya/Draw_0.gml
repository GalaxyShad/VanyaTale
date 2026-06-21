if (FadeAway) {
   if (image_alpha > 0) image_alpha -= 0.1;
} else {
   if (image_alpha < 1) image_alpha += 0.1;
}

if (image_alpha <= 0) IsFaded = true;
else IsFaded = false;

var x_delta = xx - x;
x += min(max(x_delta, -x_delta / 2), x_delta / 2);

tick += 0.175;

var bot_x = x;
var bot_y = y + 64;

var top_x = x + sin(tick) * 2;
var top_y = y + abs(sin(tick))

var head_x = x + sin(tick) * 2.5;
var head_y = y-84 + abs(cos(tick/1.2)) * 2;

if (isTakingDmg) {
   dmg_tick += 1;

   top_y = y;
   head_y = y-84;
   
   bot_x  = x + cos(dmg_tick+1.0) * 2;
   top_x  = x + cos(dmg_tick+0.5) * 2;
   head_x = x + cos(dmg_tick) * 2;
}

draw_sprite_ext(sprBattleVanyaBottom, 0, bot_x, bot_y, 2, 2, 0, c_white, image_alpha);


draw_sprite_ext(sprBattleVanyaTop, 0, top_x, top_y, 2, 2, 0, c_white, image_alpha);

if (!instance_exists(objB_Dialog)){
    Emotion = 0
    
    if (global.enemyHp <= global.enemyHpMax / 3)
       draw_sprite_ext(sprBattleVanyaHead, 2-isTakingDmg, head_x, head_y, 2, 2, 0, c_white, image_alpha);
    else
        draw_sprite_ext(sprBattleVanyaHead, isTakingDmg, head_x, head_y, 2, 2, 0, c_white, image_alpha);
} else 
     draw_sprite_ext(sprVanyaEmotions, Emotion, head_x, head_y, 2, 2, 0, c_white, image_alpha);

if (objB_Border.top <= bot_y + 16*2 && image_alpha == 1) {
    while (xx+23*2 >= objB_Border.left-32) {
       xx--;
    }
}

else 
   xx = room_width / 2;
   
global.en_x = x;
global.en_y = y;
   
   

