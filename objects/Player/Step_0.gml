/// @description Insert description here

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

    if (keyboard_check(ord("A"))) {
        dx += dsin(look_dir) * move_speed;
        dy += dcos(look_dir) * move_speed;
    }

    if (keyboard_check(ord("D"))) {
        dx -= dsin(look_dir) * move_speed;
        dy -= dcos(look_dir) * move_speed;
    }

    if (keyboard_check(ord("W"))) {
        dx -= dcos(look_dir) * move_speed;
        dy += dsin(look_dir) * move_speed;
    }

    if (keyboard_check(ord("S"))) {
        dx += dcos(look_dir) * move_speed;
        dy -= dsin(look_dir) * move_speed;
    }
  
    x += dx;
    y += dy;
    #endregion
}

//gravity

//flying mode
if (keyboard_check_pressed(vk_space)) {
	zspeed = 6;
}

if (keyboard_check_pressed(ord("Z"))) {
	zspeed = -6
}
	
//if z<3 and zspeed<3 and (keyboard_check_pressed(vk_space)) {
	//zspeed = 6;
//}

z+=zspeed;

if (z<0) {
	z = 0
	zspeed = 0
}

Camera.playerCollider.set_position(x,y,z)
//zspeed-=0.5;



if (keyboard_check_pressed(vk_tab)) {
    window_mouse_set_locked(!window_mouse_get_locked());
}