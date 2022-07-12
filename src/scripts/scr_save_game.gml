var _save_file = file_text_open_write("save.sav");

file_text_write_real(_save_file, global.try);
file_text_write_real(_save_file, audio_get_master_gain(0));

file_text_close(_save_file);