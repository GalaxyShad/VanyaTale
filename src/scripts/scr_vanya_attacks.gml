
var _atk = noone;
var _prg = objBattle.Progress;

if (global.enemyHp == 0) {
   room_goto(rm_end_cutscene);
}


switch (_prg) {
       case 0: {
            _atk = objAtkBone2;
            break;
       }
       case 1: {
            _atk = objAtkSnow;
            break;
       }
       case 2: {
            _atk = objAtkMotorcycle;
            break;
       }
       case 3: {
            _atk = objAtkKucha;
            break;
       }
       case 4: {
            _atk = objAtkMarkBlaster2;
            break;
       }
       case 5: {
            _atk = objAtkDzudo;
            break;
       }
       case 6: {
            _atk = objAtkBoneSin;
            break;
       }
       case 7: {
            _atk = objAtkWriting;
            break;
       }
       case 8: {
            _atk = objAtkChulok;
            break;
       }
       case 9: {
            _atk = objAtkMarkBlaster3;
            break;
       }
       case 10: {
            _atk = objAtkSpongebob;
            break;
       }
       case 11: {
            _atk = objAtkBone1;
            break;
       }
       case 12: {
            _atk = objAtkMarkBlaster;
            break;
       }
       case 13: {
            _atk = objAtkBone3;
            break;
       }
       


       default: {
            while (_atk == global.prev_atk || _atk = noone) {
                _atk = choose(
                     objAtkMarkBlaster,
                     objAtkMotorcycle,
                     objAtkChulok,
                     objAtkSnow,
                     objAtkDzudo,
                     objAtkKucha,
                     objAtkWriting,
                     objAtkSpongebob,
                     
                     objAtkBone1,
                     objAtkBone2,
                     objAtkBone3,
                     objAtkBoneSin,
                     
                     objAtkMarkBlaster2,
                     objAtkMarkBlaster3,
                );
            }
            break;
       }

}

global.prev_atk = _atk;

return instance_create(x, y, _atk);