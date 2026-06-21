if (!instance_exists(oDia) && inDialog) {
   inDialog = false;
   
   oSoul.CanMove = true;

   oAttack = scr_vanya_attacks();
}

if (!inDialog && !instance_exists(oAttack)) {

   with oSoul instance_destroy();
   with oBorder {
        Width = 575;
        Height = 140;
        
        x = room_width / 2;
        y = 320;
   }
   with objBattle {
        menu = 0;
        Progress++;
   }
   
   global.plrMode = 0;
   instance_destroy();
   
}

