vanya.yscale = 2;
vanya.yscale_spd = 100;

vanya.sprite_index = sprVanyaEndStand;
vanya.image_index = 0;

vanya.drible = false;

var _dialog = instance_create(vanya.x + 64, vanya.y - 160, objB_Dialog);
_dialog.msg[0] = "Найди себе нового Кумира";
_dialog.msg[1] = "Ариведерчи";

alarm[4] = 150;


