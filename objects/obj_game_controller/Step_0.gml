/// @description Game Controller Object Step Event Code
// Pause Game Code Stuff
// if it is Ingameplay Game State Allow the Game to Pause otherwise do nothing
if global.game_state_mode = 1
{
	if keyboard_check_pressed(vk_escape) and game_paused = false
	{
		game_paused = true;
		audio_play_sound(sfx_confirm, 0, false);
		instance_deactivate_all(true);
		instance_activate_object(obj_game_controller);
		instance_activate_object(obj_devmode_controller);
		layer_set_visible("UILayer_PauseMenu", true);
	}
	else if keyboard_check_pressed(vk_escape) and game_paused = true
	{
		game_paused = false;
		audio_play_sound(sfx_cancel, 0, false);
		instance_activate_all();
		layer_set_visible("UILayer_PauseMenu", false);
	}
}