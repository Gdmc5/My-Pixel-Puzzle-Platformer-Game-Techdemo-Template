/// @description Hovering Over Button's with Mouse Code
if sprite_index = spr_button_long
{
	sprite_index = spr_button_long_selected;
	audio_play_sound(sfx_select, 0, false);
	button_selected = true;
}
else
{
sprite_index = spr_button_selected;
audio_play_sound(sfx_select, 0, false);
button_selected = true;
}