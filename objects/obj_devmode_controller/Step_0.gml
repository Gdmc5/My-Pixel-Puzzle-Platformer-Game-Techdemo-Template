/// @description Dev Mode Controller Key Controls Code
if keyboard_check_pressed(vk_tab)
{
	if global.dev_mode = true
	{
		global.dev_mode = false;
		audio_play_sound(sfx_select, 0, false);
	}
	else
	{
	global.dev_mode = true;
	audio_play_sound(sfx_confirm, 0, false);
	}
}
if global.dev_mode = true
{
	if keyboard_check_pressed(vk_f12)
	{
		game_restart();
	}
	if keyboard_check_pressed(vk_f1)
	{
		audio_play_sound(sfx_teleport, 0, false);
		room_restart();	
	}
	if keyboard_check_pressed(vk_f4)
	{
		if global.game_fullscreen = true
		{
			audio_play_sound(sfx_cancel, 0, false);
			global.game_fullscreen = false;
			window_set_fullscreen(false);
		}
		else
		{
		audio_play_sound(sfx_confirm, 0, false);
		global.game_fullscreen = true;
		window_set_fullscreen(true);
		}
	}
	if keyboard_check_pressed(vk_f5)
	{
		if global.music_disabled = true
		{
		global.music_disabled = false;
		audio_play_sound(sfx_explosion, 0, false);
		audio_resume_all();
		}
		else
		{
		global.music_disabled = true;
		audio_pause_all();
		audio_play_sound(sfx_disappear, 0 , false);
		}
	}
}