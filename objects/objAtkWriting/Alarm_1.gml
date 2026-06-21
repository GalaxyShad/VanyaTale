if (pos >= string_length(msg)) {
   exit;
}

if (string_char_at(msg, pos) == "#") {
   xx = 0;
   pos++;
} else if (string_char_at(msg, pos) == " ") {
   xx += 16;
}

if (string_char_at(msg, pos) != " " && string_char_at(msg, pos) != "#") {
   oLetter = instance_create(oBorder.left + 8 + xx, oBorder.top - 20, objFightLetter);
   oLetter.ordd = string_char_at(msg, pos);
}


pos++;
xx += 16;

alarm[1] = 1;

