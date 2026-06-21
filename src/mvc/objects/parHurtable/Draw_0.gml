var col = c_white;

if (Type == 1)      col = c_aqua;
else if (Type == 2) col = c_orange;


draw_sprite_ext(sprite_index, 
                image_index, 
                x, y, 
                image_xscale, image_yscale, 
                image_angle, 
                col, 
                image_alpha);

