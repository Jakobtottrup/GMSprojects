{
    var ahead, left, right;
    if ( !place_snapped(32,32) ) exit;
    if (vspeed == 0)
    {
        ahead = place_free(x+hspeed,y);
        left = place_free(x,y+4);
        right = place_free(x,y-4);
        if (!ahead && !left && !right) {direction += 180; exit;}
        while(true)   // forever
        {
            if (ahead && random(3)<1) {exit;}
            if (left && random(3)<1) {direction = 270; exit;}
            if (right && random(3)<1) {direction = 90; exit;}
        }
    }
    else
    {
        ahead = place_free(x,y+vspeed);
        left = place_free(x+4,y);
        right = place_free(x-4,y);
        if (!ahead && !left && !right) {vspeed = -vspeed; exit;}
        while(true)   // forever
        {
            if (ahead && random(3)<1) {exit;}
            if (left && random(3)<1) {direction = 0; exit;}
            if (right && random(3)<1) {direction = 180; exit;}
        }
    }
}
