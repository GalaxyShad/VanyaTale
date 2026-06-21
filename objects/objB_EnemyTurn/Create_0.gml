inDialog = true;



oDia = scr_vanya_dialog();

oBorder = objB_Border;

oSoul = instance_create(oBorder.x, oBorder.y, objB_Soul);
oSoul.CanMove = false;

oAttack = noone;

with oBorder {
    Width = 50;
    Height = 50;
}   



