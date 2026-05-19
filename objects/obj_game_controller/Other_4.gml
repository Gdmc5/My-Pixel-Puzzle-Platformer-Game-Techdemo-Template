/// @description Game State Mode Setup and Stage Start Setup Code
window_set_size(1320, 780);

// Game State Mode 1 Ingameplay Mode
if global.game_state_mode = 1
{
	switch (land)
	{
	// Testing Debugging land
	case 0:
		// Check the Stage you are on to set diffrent variables depending on the stage and set the Stage Music to play and More
		switch (room)
		{
			case (stage_land_00_00):
			stage = 0;
			if global.music_disabled = false
			{
			audio_play_sound(mus_land_00_track_00, 0, true);
			}
			break
			case (stage_land_00_01):
			stage = 1;
			if global.music_disabled = false
			{
			audio_play_sound(mus_land_00_track_01, 0, true);
			}
			break
			case (stage_land_00_02):
			stage = 2;
			if global.music_disabled = false
			{
			audio_play_sound(mus_land_00_track_02, 0, true);
			}
			break
			case (stage_land_00_03):
			stage = 3;
			if global.music_disabled = false
			{
			audio_play_sound(mus_land_00_track_02, 0, true);
			}
			break
			case (stage_land_00_04):
			stage = 4;
			if global.music_disabled = false
			{
			audio_play_sound(mus_land_00_track_01, 0, true);
			}
			break
			case (stage_land_00_hidden):
			stage = 11;
			if global.music_disabled = false
			{
			audio_play_sound(mus_titlescreen, 0, true);
			}
			break
			default:
			stage = -1;
			//land = -1;
			audio_stop_all();
		}
		break
		// Land -1 Invaild Dummy Land
		default:
	}
}