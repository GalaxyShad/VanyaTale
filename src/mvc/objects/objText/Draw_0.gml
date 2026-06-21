
draw_set_colour(fontColor);
draw_set_font(font);
//draw_text(0, 0, "ASLDlsad");

var text_x = 0;
var text_y = 0;
var is_p = false;
var color = fontColor;


for (var i = 1; i < pos+1; i++) {
    if (string_char_at(message, i) == "/") {
       switch (string_char_at(message, i+1)) {
              case "y": color = c_yellow; break;
              case "g": color = c_lime; break;
              case "b": color = c_aqua; break;
              case "r": color = c_red; break;
       }
       i += 2;
    }
    
    if (string_char_at(message, i) == " ") {
       color = fontColor;
    }

    if ( (text_x > maxWidth - 128 && string_char_at(message, i) == " ") || (string_char_at(message, i) == "#")) {
       text_y += interval;
       text_x = 0; 
       if (is_p) {
          text_x += string_width(string_hash_to_newline("* "));
       }
    
      continue;
    }
    
     if (string_char_at(message, i) == "*") {
       text_y += interval * (i != 1);
       text_x = 0; 
       is_p = true;
    }
    
    
       
    draw_text_colour(x + text_x, y-7 + text_y, string_hash_to_newline(string_char_at(message, i)), color, color, color, color, 1);
    //draw_text(x + text_x, y-7 + text_y, string_char_at(message, i));
    
    text_x += string_width(string_hash_to_newline(string_char_at(message, i))) + addSpacing;
}

