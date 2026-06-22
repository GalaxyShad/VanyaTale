function scr_vanya_dialog() {
    var _dialog = noone;
    var _msg = 0;
    var _emo = 0;
    var _prg = objBattle.Progress;

    switch (_prg) {
        case 0:
            _msg[0] = global.i18n.battleVanya.prg0.msg0;
            _msg[1] = global.i18n.battleVanya.prg0.msg1;
            _msg[2] = global.i18n.battleVanya.prg0.msg2;
            _msg[3] = global.i18n.battleVanya.prg0.msg3;

            _emo[0] = 2;
            _emo[1] = 3;
            _emo[2] = 8;
            _emo[3] = 9;
            break;
        case 1:
            _msg[0] = global.i18n.battleVanya.prg1.msg0;
            _msg[1] = global.i18n.battleVanya.prg1.msg1;
            _msg[2] = global.i18n.battleVanya.prg1.msg2;
            _msg[3] = global.i18n.battleVanya.prg1.msg3;

            _emo[0] = 0;
            _emo[1] = 1;
            _emo[2] = 0;
            _emo[3] = 5;

            break;
        case 2:
            _msg[0] = global.i18n.battleVanya.prg2.msg0;

            _emo[0] = 6;
            break;
        case 3:
            _msg[0] = global.i18n.battleVanya.prg3.msg0;
            _msg[1] = global.i18n.battleVanya.prg3.msg1;

            _emo[0] = 0;
            _emo[1] = 5;
            break;
        case 4:
            _msg[0] = global.i18n.battleVanya.prg4.msg0;

            _emo[0] = 10;
            break;
        case 5:
            _msg[0] = global.i18n.battleVanya.prg5.msg0;
            _msg[1] = global.i18n.battleVanya.prg5.msg1;

            _emo[0] = 4;
            _emo[1] = 5;
            break;
        case 6:
            _msg[0] = global.i18n.battleVanya.prg6.msg0;
            _msg[1] = global.i18n.battleVanya.prg6.msg1;

            _emo[0] = 5;
            _emo[1] = 5;
            break;
        case 7:
            _msg[0] = global.i18n.battleVanya.prg7.msg0;

            _emo[0] = 5;
            break;
        case 8:
            _msg[0] = global.i18n.battleVanya.prg8.msg0;
            _msg[1] = global.i18n.battleVanya.prg8.msg1;

            _emo[0] = 3;
            _emo[1] = 10;
            break;
        case 9:
            _msg[0] = global.i18n.battleVanya.prg9.msg0;

            _emo[0] = 4;
            break;
        case 10:
            _msg[0] = global.i18n.battleVanya.prg10.msg0;
            _msg[1] = global.i18n.battleVanya.prg10.msg1;

            _emo[0] = 4;
            _emo[1] = 10;
            break;
        case 11:
            _msg[0] = global.i18n.battleVanya.prg11.msg0;
            _msg[1] = global.i18n.battleVanya.prg11.msg1;

            _emo[0] = 4;
            _emo[1] = 0;
            break;
        case 12:
            _msg[0] = global.i18n.battleVanya.prg12.msg0;

            _emo[0] = 2;
            break;
        case 13:
            _msg[0] = global.i18n.battleVanya.prg13.msg0;

            _emo[0] = 3;
            break;
    }

    if (global.enemyHp == 0) {
        audio_stop_all();

        _msg = 0;
        _emo = 0;

        _msg[0] = global.i18n.battleVanya.final.msg0;
        _msg[1] = global.i18n.battleVanya.final.msg1;
        _msg[2] = global.i18n.battleVanya.final.msg2;
        _msg[3] = global.i18n.battleVanya.final.msg3;
        _msg[4] = global.i18n.battleVanya.final.msg4;
        _msg[5] = global.i18n.battleVanya.final.msg5;
        _msg[6] = global.i18n.battleVanya.final.msg6;
        _msg[7] = global.i18n.battleVanya.final.msg7;

        _emo[0] = 11;
        _emo[1] = 11;
        _emo[2] = 11;
        _emo[3] = 11;
        _emo[4] = 11;
        _emo[5] = 10;
        _emo[6] = 13;
        _emo[7] = 12;
    }

    if (array_length_1d(_msg)) {
        _dialog = instance_create(
            objB_Vanya.x + 48,
            objB_Vanya.y - 40,
            objB_Dialog
        );
        _dialog.msg = _msg;
        _dialog.emotion = _emo;
    }

    return _dialog;
}
