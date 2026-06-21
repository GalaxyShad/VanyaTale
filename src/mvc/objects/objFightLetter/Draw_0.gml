
//draw_sprite(sprMask16, 0, x, y);

if (!gnd)
   draw_set_color(c_white);
else 
    draw_set_color(c_gray); 
draw_set_font(fntMain);
draw_text(x-2, y-8, string_hash_to_newline(ordd));



