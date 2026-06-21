

var _x = 100;
var _y = 276;

draw_set_font(fntMain);
draw_set_colour(c_white);

var item_y = 0;
var item_x = 0;



var m = 6;
if (page == pages - 1)
   m = ds_list_size(global.items) % 6;
   
if m == 0 
   m = 6;

for (var i = 0; i < m; i++) {
    if (i == 3) {
       item_y = 0;
       item_x += 256;
    }
    
    if (pos == page * 6 + i) {
       draw_sprite(sprB_Soul, 0, _x + item_x - 24, _y + item_y + 10 );
    }
    
    var item = ds_list_find_value(global.items, page*6 + i);
    draw_text(_x + item_x, _y + item_y - 8,  string_hash_to_newline("* " + item[0]) ); 
    
    item_y += 32;
}

draw_set_color(c_gray);
draw_rectangle(100, 372, 500, 372+4, false);
draw_set_color(c_white);

var _cx = (page / pages) * 400;
draw_rectangle(100 + _cx, 370, 100 + _cx + (400 / pages), 370+8, false);

draw_set_color(c_white);

draw_text(516, 352, string_hash_to_newline(string(page+1) + " / " + string(pages))); 




