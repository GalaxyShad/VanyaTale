image_speed = 0;

Spd = 35;

item_delta = 94 + 8;

s = floor(random_range(30, 40)) * item_delta + random_range(32, 94-32)
dec = (Spd*Spd) / (2 * s - room_width + Spd)

items = 0;

for (var i = 0; i < floor(s / 94)+4; i++) {
    items[i] =  instance_create(item_delta*i, y-61, objRollCard);   

    items[i].image_index = scr_case_random();
}

oItem = noone;



action_sound(sfx_frypan, 0);
