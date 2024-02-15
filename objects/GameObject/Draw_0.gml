// @description Insert description here
// You can write your code in this editor
if(!rollback_game_running) exit;


if(activated){


	matrix_set(matrix_world, matrix_build(x, y, z, 0, 0, 180, 1, 1, 1));
	vertex_submit(model, pr_trianglelist, -1);
	matrix_set(matrix_world, matrix_build_identity());/// @description Insert description here
// You can write your code in this editor

	show_debug_message("Drawing Game Objects")
}