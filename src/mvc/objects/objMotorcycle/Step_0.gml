
hspeed += acc * Dir;

if (x + 26 >= objB_Border.right) {
   instance_create(x-16, y, objMotorcycleWheel);
   instance_create(x+16, y, objMotorcycleWheel);
   
   audio_play_sound(snd_bombsplosion, 0, false);
   
   instance_create(x, y, objMotorCycleExplosion);
   
   instance_destroy();
}

