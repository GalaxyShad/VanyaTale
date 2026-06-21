
if (init) {
    image_angle = Angle + 180;

    x += 600 * sin(degtorad(image_angle));
    y += 600 * cos(degtorad(image_angle));
    
    init = false;
}


var angle_delta = Angle - image_angle;
var x_delta = start_x - x;
var y_delta = start_y - y;

if (!fire) {
    xsp = min(max(x_delta, -x_delta / 2), x_delta / 2 );
    ysp = min(max(y_delta, -y_delta / 2), y_delta / 2 );
} else {
    xsp -= 2 * sin(degtorad(image_angle));
    ysp -= 2 * cos(degtorad(image_angle));
}

image_angle += min(max(angle_delta, -angle_delta / 2), angle_delta / 2 );

if (image_index >= 3 && !fire) {
   audio_play_sound(snd_rainbowbeam, 0, false);
   audio_play_sound(snd_mark, 0, false);
   
   image_speed = 0;
   
   fire = true;
   
   oTrail = instance_create(x, y, objMarkBlasterTrail);
   oTrail.image_angle = Angle;
   oTrail.Scale = image_xscale;
   
} 

if (instance_exists(oTrail)) {
   oTrail.x = x;
   oTrail.y = y;
} else if (fire) {
   instance_destroy();
}

x += xsp;
y += ysp;



