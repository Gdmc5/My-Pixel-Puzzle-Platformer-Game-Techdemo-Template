/// @description Play Title Screen Music Code
// Set Game State Mode to 0 InMenus Mode
global.game_state_mode = 0;
// Set Game Mode to 0 InMenus Mode
global.game_mode = 0;
// Play Title Screen Music if not Disabled
if global.music_disabled = false
{
audio_play_sound(mus_titlescreen, 0, true);
}