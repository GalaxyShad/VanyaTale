
if (!instance_exists(oText)) {
   if (array_length_1d(emotion) != 0)
      objB_Vanya.Emotion = emotion[pos];


    oText = instance_create(x+38, y-20, objText);
    oText.message = string_lower(msg[pos]);
    oText.font = fntSans;
    oText.fontColor = c_black;
    oText.maxWidth = 270;
    oText.interval = 18;
    oText.canSkip = true;
    oText.addSpacing = 2;
    oText.snd = snd_txtsans;
}


if (oText.isDone && global.keyActionPressed) {
   pos++;
   with oText instance_destroy();
   
   if (pos >= array_length_1d(msg)) {
      instance_destroy();
      exit;
   }
   
    
   
}

