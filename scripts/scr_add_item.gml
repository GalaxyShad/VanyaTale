
var _item;

switch(argument0) {
    case 0: 
           _item[0] = "Мороженое";
           _item[1] = 25;
           break;
    case 1: 
           _item[0] = "Крылья CFC";
           _item[1] = 45;
           break;
    case 2: 
           _item[0] = "Рамен";
           _item[1] = 100;
           break;
    default:
            _item[0] = "?";
           _item[1] = 1;
}

ds_list_add(global.items, _item);   