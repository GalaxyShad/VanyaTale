draw_set_colour(c_white);
for (var i = 0; i < THICK; i++) {
    draw_rectangle(left+i, top+i, right-i, bottom-i, true);
}

//draw_set_colour(c_black);
//draw_rectangle(left+THICK, top+THICK, right-THICK, bottom-THICK, false);




draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, top, false);
draw_rectangle(0, bottom+1, room_width, room_height, false);

draw_rectangle(right+1, top, room_width, bottom, false);
draw_rectangle(0, top, left-1, bottom, false);

draw_set_colour(c_white);

