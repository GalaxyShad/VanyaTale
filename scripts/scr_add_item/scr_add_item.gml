function scr_add_item(argument0) {

	var _item;

	switch(argument0) {
	    case 0: 
	           _item[0] = global.i18n.items.iceCream;
	           _item[1] = 25;
	           break;
	    case 1: 
	           _item[0] = global.i18n.items.chickenWings;
	           _item[1] = 45;
	           break;
	    case 2: 
	           _item[0] = global.i18n.items.ramen;
	           _item[1] = 100;
	           break;
	    default:
	            _item[0] = global.i18n.items.unknown;
	           _item[1] = 1;
	}

	ds_list_add(global.items, _item);   


}
