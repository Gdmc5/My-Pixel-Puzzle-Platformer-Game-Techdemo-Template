/// @description Stage Goal Object Create Event Code
/*
This Create Event is Used for setting the Stage Goal Type
and Other Things that will be added here in the Future :3
*/
switch(stagegoal_type)
{
// Normal Stage Goal Type
case 0:
	sprite_index = spr_stage_goal_normal;
	break
// Secret Stage Goal Type
case 1:
	sprite_index = spr_stage_goal_secret;
	break
default:
	sprite_index = spr_stage_goal_tutorial_og;
	break
}