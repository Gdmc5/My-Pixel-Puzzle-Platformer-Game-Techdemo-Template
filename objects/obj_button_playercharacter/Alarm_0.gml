/// @description Click On Player Character Button Code

// Inherit the parent event
event_inherited();
switch(character_select_character)
{
case 0:
obj_game_controller.player_character = 0;
break
case 1:
obj_game_controller.player_character = 1;
break
case 2:
obj_game_controller.player_character = 255;
break
default:
obj_game_controller.player_character = -1;
}
/* Set Game State Mode to 1 Ingameplay Mode and Set Land to 0 Testing Debugging Land and Set Stage to 0 and goto room
stage_land_00__00 */
global.game_state_mode = 1;
obj_game_controller.land = 0;
obj_game_controller.stage = 0;
room_goto(stage_land_00_00);
