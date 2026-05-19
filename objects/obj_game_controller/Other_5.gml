/// @description Game State Mode and Stage End Setup Code
// Set the Pause Menu UI Layer to be not visible and Reset the game_paused flag to false
layer_set_visible("UILayer_PauseMenu", false);
game_paused = false;
// Game State Mode 1 Ingameplay Mode
if global.game_state_mode = 1
{
	switch (land)
	{
		// Land 0 Testing Debugging Land
		case 0:
		// Check what Stage you are on and reset variables depending on the stage and also stop the music from playing
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
			case (stage_land_00_04):
			if global.music_disabled = false
			{
			audio_stop_sound(mus_land_00_track_01);
			}
			break
			case (stage_land_00_hidden):
			if global.music_disabled = false
			{
			audio_stop_sound(mus_titlescreen);
			}
			break
			default:
			//if global.music_disabled = false
			//{
			//audio_stop_sound(mus_land_00_track_00);
			//}
		}
	break
	// Land -1 Invaild Dummy Land
	default:
		// Check what Stage you are on and reset variables depending on the stage and also stop the music from playing
		switch (room)
			{
			default:
			//if global.music_disabled = false
			//{
			//audio_stop_sound(mus_land_00_track_00);
			//}
			}
	}
}