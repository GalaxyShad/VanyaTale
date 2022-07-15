var factor = 854 / global.scr_height;

if (os_type == os_windows)
   window_set_size(global.scr_width * factor, global.scr_height * factor);

var scr_factor = round(global.scr_height / 854) + 0.25;
//var scr_factor = round(global.scr_height / 854 + 0.2);

if (scr_factor < 1)
   scr_factor = 1;
   
global.scr_width_scaled  = global.scr_width / scr_factor;
global.scr_height_scaled = global.scr_height / scr_factor;
   
room_width  = global.scr_width / scr_factor;
room_height = global.scr_height / scr_factor;

view_visible[0] = true;

view_wview[0] =  room_width;
view_hview[0] =  room_height;

view_xport[0] = view_wview[0];
view_yport[0] = view_hview[0];

surface_resize(application_surface, global.scr_width / scr_factor,  global.scr_height / scr_factor);





