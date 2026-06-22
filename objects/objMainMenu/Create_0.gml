pos = 0;
maxPos = 4;

x = 320;

audio_stop_all();
audio_play_sound(mus_menu, 0, true);

f = function(lineNum, s) {
    draw_text(x, y+32*lineNum, string((lineNum == pos && lineNum > 0 && lineNum < maxPos) ? "{1} {0} {2}" : "{0}", s, "<", ">"));
}