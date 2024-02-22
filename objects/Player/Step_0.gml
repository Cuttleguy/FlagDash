/// @description Insert description here
if(!rollback_game_running) exit;
if (window_mouse_get_locked()) {
    #region regular movement
    look_dir -= window_mouse_get_delta_x() / 6;
    look_pitch -= window_mouse_get_delta_y() / 6;
    look_pitch = clamp(look_pitch, -85, 85);
    
    if (keyboard_check_direct(vk_escape)) {
        game_end();
    }

    var move_speed = 4;
    var dx = 0;
    var dy = 0;
	var input=rollback_get_input(player_id_reference);
	
    if (input.left) {
        dx += dsin(look_dir) * move_speed;
        dy += dcos(look_dir) * move_speed;
    }

    if (input.right) {
        dx -= dsin(look_dir) * move_speed;
        dy -= dcos(look_dir) * move_speed;
    }

    if (input.up) {
        dx -= dcos(look_dir) * move_speed;
        dy += dsin(look_dir) * move_speed;
    }

    if (input.down) {
        dx += dcos(look_dir) * move_speed;
        dy -= dsin(look_dir) * move_speed;
    }
  
    x += dx;
    y += dy;
	if (input.jump) {
	zspeed = 6;
	
}

	
//if z<3 and zspeed<3 and (keyboard_check_pressed(vk_space)) {
	//zspeed = 6;
//}
show_debug_message(x)
show_debug_message(y)
show_debug_message(z)
z+=zspeed;

if (z<0) {
	z = 0
	zspeed = 0
}

//Camera.playerCollider.set_position(x,y,z)
zspeed-=0.5;

    #endregion
	
	
}

//gravity

//inijump mode

//mapCol=new colmesh()
//mapM = colmesh_matrix_build(0, 0, 0, 0, 0, 180, 1, 1, 1);
//mapCol.addMesh("map2.obj",mapM)


collider.x = x;
collider.y = y;
collider.z = z;
collider = new colmesh_collider_capsule(x, y, z, 0, 0, 1, radius, height, 40, 3);
//Make the collider avoid the colmesh
if(!Game_Manager.mapCol)
{
	show_debug_message("Null Map Collider")
}
else
{
	

collider.avoid(Game_Manager.mapCol);
}
//collider.avoid(Camera.blueFlagCol);
//Copy the coordinates of the collider back to the player
x = collider.x;
y = collider.y;
z = collider.z;