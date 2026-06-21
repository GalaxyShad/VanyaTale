tick += 0.0525;



x += 2;
y = st_y + sin(tick) * 64;

image_angle = point_direction(x, y, xprevious, yprevious) + 180;

