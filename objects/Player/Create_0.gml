/// @description Insert description here

z = 0;
look_dir = 0;
look_pitch = 0;

max_hp = 10;
current_hp = 10;

window_mouse_set_locked(true);

zspeed = 0;
z = 200;
radius = 15;
height = 30;
spdX = 0;
spdY = 0;
spdZ = 0;
ground = false;
collider = new colmesh_collider_capsule(x, y, z, 0, 0, 1, radius, height, 40, 3);