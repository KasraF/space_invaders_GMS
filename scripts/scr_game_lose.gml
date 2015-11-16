///Game lose state
//Check Collision
hit = instance_place(x, y+argument0, obj_ship)
if (hit != noone) {
    instance_destroy();
    if (!instance_number(obj_win_state)) instance_create(room_width/2, room_height/2, obj_lose_state);
    //add ship destroy animation
    with (hit) {
        instance_create(x, y, obj_explode);
        instance_destroy();
    }
}
