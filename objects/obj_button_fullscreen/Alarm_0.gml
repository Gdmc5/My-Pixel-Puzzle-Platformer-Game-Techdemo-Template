/// @description Click On Full Screen Button Code

// Inherit the parent event
event_inherited();
if button_pressed = true
{
	window_set_fullscreen(true);
	global.game_fullscreen = true;
}
else
{
window_set_fullscreen(false);
global.game_fullscreen = false
}