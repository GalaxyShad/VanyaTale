var wDelta = Width  - width;
var hDelta = Height - height;

width  += min(max(wDelta, -wDelta / 2), wDelta / 2);
height += min(max(hDelta, -hDelta / 2), hDelta / 2);

left    = floor(x - width / 2);
right   = floor(x + width / 2);
top     = floor(y - height / 2);
bottom  = floor(y + height / 2);

//if (keyboard_check_pressed(vk_space)) {
//   Width = random_range(30, 580);
//   Height = random_range(30, 420);
//}




