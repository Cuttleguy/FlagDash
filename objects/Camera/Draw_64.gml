/////// @description Insert description here
////// You can write your code in this editor


if(!rollback_game_running) exit;


////if playerCollider.CheckMesh(_map_collider){
////	draw_text_colour(32, 100, "Shapes overlap!", c_purple, c_purple, c_purple, c_purple, 1);
////}

//draw_text_colour(32, 100, mapCol.originX, c_purple, c_purple, c_purple, c_purple, 1);
//draw_text_colour(32, 150, mapCol.originY, c_purple, c_purple, c_purple, c_purple, 1);
//draw_text_colour(32, 200, mapCol.originZ, c_purple, c_purple, c_purple, c_purple, 1);

if (keyboard_check(vk_shift)){
		if(Player.collider.checkForCollision(blueFlagCol)){
			draw_text_colour(32, 250, "Picking Up Flag", c_purple, c_purple, c_purple, c_purple, 1);
		}
		
	}
