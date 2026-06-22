Spd -= dec;

if (oItem != instance_place(x, y, objRollCard)) {
    oItem = instance_place(x, y, objRollCard);
    audio_play_sound(snd_noise, 0, false);
}

var give_count = choose(1, 2, 3);

var tstr = "";
var tcol = c_yellow;

if (Spd < 0) {
    Spd = 0;

    if (place_meeting(x, y, oItem)) {
        switch (oItem.image_index) {
            case 0:
                objBattle.AtkPowerTimer = -30;
                tstr = global.i18n.powerups.atkDecrease;
                tcol = c_red;
                break;
            case 1:
                objBattle.DefPowerTimer = -30;
                tstr = global.i18n.powerups.defDecrease;
                tcol = c_red;
                break;
            case 2:
                for (var i = 0; i < give_count; i++) scr_add_item(0);
                tstr = string(
                    "+ {0} x{1}",
                    global.i18n.items.iceCream,
                    give_count,
                );
                break;
            case 3:
                for (var i = 0; i < give_count; i++) scr_add_item(1);
                tstr = string(
                    "+ {0} x{1}",
                    global.i18n.items.chickenWings,
                    give_count,
                );
                break;
            case 4:
                objBattle.DefPowerTimer = 30;
                tstr = global.i18n.powerups.defIncrease;
                tcol = c_green;
                break;
            case 5:
                objBattle.AtkPowerTimer = 60;
                tstr = global.i18n.powerups.atkIncrease;
                tcol = c_green;
                break;
            case 6:
                for (var i = 0; i < give_count; i++) scr_add_item(2);
                tstr = string(
                    "+ {0} x{1}",
                    global.i18n.items.ramen,
                    give_count,
                );
                break;
        }
    }

    for (var i = 0; i < array_length_1d(items); i++) {
        with items[i] instance_destroy();
    }

    audio_play_sound(sfx_frypan, 0, false);

    instance_destroy();
    instance_create(x, y, objB_EnemyTurn);

    var sfx = instance_create(x, y - 64, objTextSfx);

    sfx.color = tcol;
    sfx.text = tstr;
}
