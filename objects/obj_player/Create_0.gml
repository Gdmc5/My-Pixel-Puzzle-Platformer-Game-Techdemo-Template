/// @description Set Player Variables On Create Code
player_move_x = 0;
player_move_y = 0;
/* this used to be a old variable knowed as character in the Player Object but it now uses the Game Controller Object
Player Character Variable now insted also this code selects what sprites to use for the Player Object & what the Player
Variables will be set to for Movement Speed, Jump Speed, and More
*/
switch(obj_game_controller.player_character)
{
case -1:
sprite_index = spr_player_charater_tutorial_og;
player_move_speed = 1;
player_jump_speed = 4;
break
case 0:
sprite_index = spr_player_charater_00;
player_move_speed = 1;
player_jump_speed = 4;
break
case 1:
sprite_index = spr_player_charater_00;
player_move_speed = 2;
player_jump_speed = 6;
break
default:
player_move_speed = 1;
player_jump_speed = 4;
}
