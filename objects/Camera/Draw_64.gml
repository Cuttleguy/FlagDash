/////// @description Insert description here
////// You can write your code in this editor





////if playerCollider.CheckMesh(_map_collider){
////	draw_text_colour(32, 100, "Shapes overlap!", c_purple, c_purple, c_purple, c_purple, 1);
////}

draw_text_colour(32, 100, Player.x, c_purple, c_purple, c_purple, c_purple, 1);
draw_text_colour(32, 150, Player.y, c_purple, c_purple, c_purple, c_purple, 1);
draw_text_colour(32, 200, Player.z, c_purple, c_purple, c_purple, c_purple, 1);

if(endgame&&alarming)
{
	draw_text_colour(250, 250, "You Win", c_purple, c_purple, c_purple, c_purple, 1);
	if(alarm[0]==-1)
	{
		
		alarm[0]=60
		
}}