{
    if ( !place_snapped(32,32) ) exit;
    // Calculate distance and visibility
    var dist,vis;
    dist = point_distance(x,y,obj_explorer.x,obj_explorer.y);
    vis = !collision_line(x+16,y+16,obj_explorer.x+16,obj_explorer.y+16,
                                   obj_wall1,false,false);
    // Execute the rules in order
    if (vis) { scr_behavior_towards(); exit; }
    if (dist>200) { scr_behavior_walk(); exit; }
    if (random(2)<1) { scr_behavior_towards(); exit; }
    scr_behavior_walk();
}
