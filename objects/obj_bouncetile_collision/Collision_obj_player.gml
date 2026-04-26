/// @description Bounce Tile Collision Object Collision with Player Event Code
// Make the Player bonuce in the Air
if !audio_is_playing(sfx_jump_2)
{
audio_play_sound(sfx_jump_2, 0, false)
}
obj_player.player_move_y += 7;
