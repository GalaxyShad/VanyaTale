if (instance_exists(oSponge)) {
   if (oSponge.x > oBorder.x) {
      oBorder.x += min(oSponge.x - oBorder.x, (oSponge.x - oBorder.x) / 2);
      
      var y_delta = ((oSponge.y) - oBorder.y);
      oBorder.y += min(max(y_delta, -(y_delta) / 4), (y_delta) / 4);
   }
}

