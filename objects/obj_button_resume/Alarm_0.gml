/// @description Click On Resume Button Code

// Inherit the parent event
event_inherited();
switch(global.game_state_mode)
{
case 0:
	global.game_state_mode = 1;
	room_goto(stage_land_00_00);
	break
case 1:
	obj_game_controller.game_paused = false;
	layer_set_visible("UILayer_PauseMenu", false);
	instance_activate_all();
	break
default:
}