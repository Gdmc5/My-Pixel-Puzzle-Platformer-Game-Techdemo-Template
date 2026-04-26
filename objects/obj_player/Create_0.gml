/// @description Set Player Variables On Create Code
player_move_x = 0;
player_move_y = 0;
switch(charater)
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
