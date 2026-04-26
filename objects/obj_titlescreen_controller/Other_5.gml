/// @description Stop Title Screen Music Code
// Stop Playing Title Screen Music if not Disabled
if global.music_disabled = false
{
audio_stop_sound(mus_titlescreen);
}