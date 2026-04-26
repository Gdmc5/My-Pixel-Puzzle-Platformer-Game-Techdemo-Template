/// @description Stage Goal Object Collision Code
audio_play_sound(sfx_teleport, 0, false);
var loading_stage_warp = false;
switch(stagegoal_type)
{
// Normal Stage Goal Type
case 0:
	switch(obj_game_controller.land)
	{
	case 0:
		if room = stage_land_00_hidden
		{
			loading_stage_warp = true;
			room_goto(menu_dummy);
		}
		else if room >= stage_land_00_03
		{
			loading_stage_warp = true;
			room_goto(menu_gameover);
		}
	break
	default:
		if room >= stage_dummy
		{
			room_goto(stage_dummy);
		}
	exit
	}
if loading_stage_warp = false
{
room_goto_next();
}
loading_stage_warp = false;
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
default:
room_goto(stage_dummy);
}