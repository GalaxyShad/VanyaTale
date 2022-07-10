if (!file_exists("save.sav")) 
   return 0;


var _save_file = file_text_open_read("save.sav");

global.try = file_text_read_real(_save_file);
audio_master_gain(file_text_read_real(_save_file));

file_text_close(_save_file);