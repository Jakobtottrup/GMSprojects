{
    if ( !place_snapped(32,32) ) exit;
    // find out in which direction the explorer is located
    var dir;
    dir = point_direction(x,y,obj_explorer.x,obj_explorer.y);
    dir = round(dir/90);
    if (dir == 4) dir = 0;
    // the four rules that move the mummy in the explorers direction
    if (dir == 0 && direction != 180 && place_free(x+4,y)) 
    // we don't want the mummy to make a u-turn
        { direction = 0; exit; }
    if (dir == 1 && direction != 270 && place_free(x,y-4)) 
        { direction = 90; exit; }
    if (dir == 2 && direction !=   0 && place_free(x-4,y)) 
        { direction = 180; exit; }
    if (dir == 3 && direction !=  90 && place_free(x,y+4)) 
        { direction = 270; exit; }
    // otherwise do the normal walking behavior
    scr_behavior_walk();
}
