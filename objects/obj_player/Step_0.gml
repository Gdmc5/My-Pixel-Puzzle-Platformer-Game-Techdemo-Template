/// @description Player Movement Code
// Check if Dev Mode is on to turn on Special Dev Only Features like being able to change the Player Characters speed with the up and down arrow keys
if global.dev_mode = true
{
	if keyboard_check(vk_up)
	{
	player_move_speed += 0.1;
	}
	else if keyboard_check(vk_down)
	{
	player_move_speed -= 0.1;
	}
}
// Check if player is pressing the right and left keys to move the Playable Character
player_move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
if player_move_x != 0
{
	image_xscale = sign (player_move_x);
}
player_move_x *= player_move_speed;
// Check if player has pressed the X key to Run and if they pressed the X key again stop the Running
if keyboard_check(ord("X"))
{
	player_move_speed =+ 2;
}
else if keyboard_check_released(ord("X"))
{
	player_move_speed -= 2;
	if player_move_speed <= 0
	{
		player_move_speed = 1;
	}
}

// Check if player is having collision with the solid and bounce tile type objects
if (place_meeting(x, y+1, obj_solidtile_collision))
or (place_meeting(x, y+1, obj_bouncetile_collision))
{
	player_move_y = 0;
	if (!place_meeting(x+player_move_x, y+1, obj_solidtile_collision) and place_meeting(x+player_move_x, y+10, obj_solidtile_collision))
	or (!place_meeting(x+player_move_x, y+1, obj_bouncetile_collision) and place_meeting(x+player_move_x, y+10, obj_bouncetile_collision))
	{
	player_move_y = abs(player_move_x);
	player_move_x = 5;
	// Check if player is pressing the Z key to Jump
	}
	if keyboard_check(ord("Z"))
	{
	player_move_y = -player_jump_speed;
	if !audio_is_playing(sfx_jump_1)
	{
	audio_play_sound(sfx_jump_1, 0, false);
	}
	}
}
else if player_move_y < 10
{
	player_move_y += 0.2;
}

move_and_collide(player_move_x, player_move_y, obj_solidtile_collision);
