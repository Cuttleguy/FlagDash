/// @description Draw the 3D world
if(!rollback_game_running) exit;
draw_clear(c_black);

// 3D projections require a view and projection matrix
var camera = camera_get_active();
var camera_distance = 160;

var xfrom = player.x;
var yfrom = player.y;
var zfrom = player.z + 64;
var xto = xfrom - camera_distance * dcos(player.look_dir) * dcos(player.look_pitch);
var yto = yfrom + camera_distance * dsin(player.look_dir) * dcos(player.look_pitch);
var zto = zfrom + camera_distance * dsin(player.look_pitch);

var view_mat = matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, 1);
var proj_mat = matrix_build_projection_perspective_fov(-60, -window_get_width() / window_get_height(), znear, zfar);
camera_set_view_mat(camera, view_mat);
camera_set_proj_mat(camera, proj_mat);
camera_apply(camera);

//vertex_submit(tilemap_vb, pr_trianglelist, tileset_get_texture(TileSet1));

shader_set(shd_basic_3d_stuff);
shader_set_uniform_f(shader_get_uniform(shd_basic_3d_stuff, "lightDirection"), 1, 1, -1);

scr_draw_all_the_stuff();

shader_reset();
//playerCollider.draw()
//_map_collider.draw()
//col1.draw()
