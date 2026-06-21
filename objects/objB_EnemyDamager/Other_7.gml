if (oDmgDisplay == 0) {
    actualDmg = (global.plrAtk * ((100 - global.enemyDef) / 100)) * AccuracyFactor;

    audio_play_sound(snd_damage, 0, false);
    
    with objB_Vanya isTakingDmg = true;
    
    oDmgDisplay = instance_create(x, y, objB_DmgDisplay);
    oDmgDisplay.Value = actualDmg;
    
    global.enemyHp -= actualDmg;
    
    if (global.enemyHp <= 0)
       audio_stop_sound(musBattleTemp);
    
    visible = false;
} else if (!instance_exists(oDmgDisplay)) { 
    with objB_Vanya isTakingDmg = false;

    instance_destroy();
}


