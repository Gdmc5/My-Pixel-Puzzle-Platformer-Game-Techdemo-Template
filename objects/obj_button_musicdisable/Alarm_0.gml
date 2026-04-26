/// @description Click On Music Disable Button Code

// Inherit the parent event
event_inherited();
if button_pressed = true
{
	global.music_disabled = true;
	audio_stop_sound(mus_settingsmenu);
}
else
{
global.music_disabled = false;
audio_play_sound(mus_settingsmenu, 0, true);
}