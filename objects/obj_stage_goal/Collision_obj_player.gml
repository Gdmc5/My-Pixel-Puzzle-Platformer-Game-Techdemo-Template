/// @description Stage Goal Object Collision Code
// Play Sound Effect Teleport if not already playing and set a local variable named loading stage warp a flag used to prevent spam loading of stages
if !audio_is_playing(sfx_teleport)
{
audio_play_sound(sfx_teleport, 0, false);
}
var loading_stage_warp = false;
/* Check what type of stage goal this is and load diffrent stages for each one the types being, Normal Type, Secret Type, if not able to load a vaild
type load the Dummy Type
*/
switch(stagegoal_type)
{
// Normal Stage Goal Type
case 0:
	switch(obj_game_controller.land)
	{
	// Land 0 Test Debugging Land
	case 0:
		if room = stage_land_00_hidden
		{
			loading_stage_warp = true;
			room_goto(menu_dummy);
		}
		else if room >= stage_land_00_04
		{
			loading_stage_warp = true;
			room_goto(menu_gameover);
		}
	break
	// Land -1 Dummy Land
	default:
		if room >= stage_dummy
		{
			room_goto(stage_dummy);
		}
	exit
	}
// if loading stage warp flag is false load the next stage else don't load the next stage and do nothing
if loading_stage_warp = false
{
room_goto_next();
}
loading_stage_warp = true;
break
// Secret Stage Goal Type
case 1:
	switch(obj_game_controller.land)
	{
	case 0:
	room_goto(stage_land_00_hidden);
	break
	default:
	room_goto(stage_dummy);
	}
break
// Dummy/Invaild Stage Goal Type
default:
room_goto(stage_dummy);
}