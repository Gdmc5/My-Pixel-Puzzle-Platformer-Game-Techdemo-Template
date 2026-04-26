/// @description Game State Mode and Stage End Setup Code
layer_set_visible("UILayer_PauseMenu", false);
game_paused = false;
// Game State Mode 1 Ingameplay Mode
if global.game_state_mode = 1
{
	switch (room)
	{
		case (stage_land_00_00):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_land_00_track_00);
		}
		break
		case (stage_land_00_01):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_land_00_track_01);
		}
		break
		case (stage_land_00_02):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_land_00_track_02);
		}
		break
		case (stage_land_00_03):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_land_00_track_02);
		}
		break
		case (stage_land_00_hidden):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_titlescreen);
		}
		break
		default:
	}
}