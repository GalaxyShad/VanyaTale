
tick += 5;

if (drible)
   x = st_x + sin(tick) * 2;


var xs_delta =  xscale - image_xscale;

image_xscale += min(max(xs_delta, -xs_delta / xscale_spd), xs_delta/ xscale_spd);

var ys_delta = yscale -  image_yscale;

image_yscale += min(max(ys_delta, -ys_delta / yscale_spd), ys_delta / yscale_spd);

