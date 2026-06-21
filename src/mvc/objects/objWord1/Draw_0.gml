if (!gnd) draw_sprite(sprite_index, 0, x, y);
else {

    draw_set_alpha(c_white);
    draw_set_alpha(image_alpha);
    draw_rectangle(
         x - (sprite_get_width(sprite_index) / 2) * image_xscale , 
         y - (sprite_height / 2),
         x + (sprite_get_width(sprite_index) / 2) * image_xscale , 
         y + (sprite_height / 2),
         false
    );
    draw_set_alpha(1);

}

//draw_text(x, y, sprite_get_height(sprite_index));

