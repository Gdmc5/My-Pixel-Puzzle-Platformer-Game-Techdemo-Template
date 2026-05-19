/// @description Draw In Game GUI Code
// Game State Mode 1 Ingameplay Mode
if global.game_state_mode = 1
{
	// The New Code is bugged so here is the Old Code
	//draw_text(2, 4, $"Tokens" - currency);
	draw_text(2, 4, currency);
	if global.dev_mode = true
	{
		if object_exists(obj_player) and game_paused = false
		{
		draw_text(750, 4, obj_player.player_move_x);
		draw_text(750, 31, obj_player.player_move_y);
		draw_text(750, 58, obj_player.player_move_speed);
		draw_text(750, 84, obj_player.player_jump_speed);
		draw_text(750, 110, obj_player.charater);
		}
		draw_text(750, 136, land);
		draw_text(750, 160, stage);
	}
}