//show_debug_log(true)
//playerCollider.update()
//_map_collider.update()
//col1.update()
//show_debug_message(string(triangle_array))

//show_debug_message(playerCollider.line.start.x)
//show_debug_message(playerCollider.line.start.y)
//show_debug_log(triangle_)
if (keyboard_check(vk_shift)){
		if(Player.collider.checkForCollision(blueFlagCol)&&!endgame){
			endgame=true
			alarming=true
		
			alarm[0]=game_get_speed(gamespeed_fps);
		}
		
	}
