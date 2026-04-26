/// @description Stop Menu Music Code
switch(room)
{
case (menu_settings):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_settingsmenu);
		}
break
case (menu_gameover):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_gameover);
		}
break
case (menu_dev):
		if global.music_disabled = false
		{
		audio_stop_sound(mus_devmenu);
		}
break
default:
	if global.music_disabled = false
	{
	audio_stop_sound(mus_menu);
	}
}