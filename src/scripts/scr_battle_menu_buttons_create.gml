var _l = 16;
var _r = global.scr_width_scaled - 16;
var _b = global.scr_height_scaled - 16;

buttons[0] = instance_create(_l, _b - (50*1.5)*2, objMenuButton);
buttons[1] = instance_create(_l, _b - (50*1.5)*1, objMenuButton);
buttons[2] = instance_create(_r - 110 * 1.5, _b - (50*1.5)*2, objMenuButton);
buttons[3] = instance_create(_r - 110 * 1.5, _b - (50*1.5)*1, objMenuButton);

buttons[0].index = 0;
buttons[1].index = 1;
buttons[2].index = 2;
buttons[3].index = 3;

return 0;
