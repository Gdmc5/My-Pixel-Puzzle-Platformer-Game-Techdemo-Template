/// @description Play Menu Music And Misc Menu Things Code
// Set Game State Mode to 0 InMenus Mode
global.game_state_mode = 0;
// Set Game Mode to 0 InMenus Mode
global.game_mode = 0;
switch(room)
{
case (menu_settings):
		if global.game_fullscreen = true
		{
			obj_button_fullscreen.button_pressed = true
		}
		if global.music_disabled = true
		{
			obj_button_musicdisable.button_pressed = true
		}
		if global.music_disabled = false
		{
		audio_play_sound(mus_settingsmenu, 0, true);
		}
break
case (menu_gameover):
		if global.music_disabled = false
		{
		audio_play_sound(mus_gameover, 0, false)
		}
break
case (menu_dev):
		if global.music_disabled = false
		{
		audio_play_sound(mus_devmenu, 0, true);
		}
break
default:
	if global.music_disabled = false
	{
	audio_play_sound(mus_menu, 0, true);
	}
}