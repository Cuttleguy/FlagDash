/// @description Insert description here

z = 0;
look_dir = 0;
look_pitch = 0;

max_hp = 10;
current_hp = 10;

window_mouse_set_locked(true);

zspeed = 0;
collider = new colmesh_collider_capsule(x, y, z, 10, 10, 10, 20, 50, 45);