if (pos >= posMax) {
   isDone = true;
   exit;
}

if (string_char_at(message, pos) == " " || string_char_at(message, pos) == "*") {
   pos++;
}

if (string_char_at(message, pos) == "/") {
   pos+=2;
}

//if (messsage[pos] == )

audio_play_sound(snd, 0, false);
pos++;
   
alarm[0] = spd;
if (string_char_at(message, pos) == "," || string_char_at(message, pos) == "." || string_char_at(message, pos) == "?" || string_char_at(message, pos) == "!")
   alarm[0] = 15;




