/// @description Click On Button Play Sfx and Animate Code
audio_play_sound(sfx_confirm,0,false);
switch (sprite_index)
{
case (spr_button_long_selected):
	sprite_index = spr_button_long;
	image_index = 1;
	break
case (spr_button_long):
	image_index = 1;
	break
default:
if sprite_index = spr_button and image_index = 1
{
	image_index = 0;
}
else
{
sprite_index = spr_button;
image_index = 1;
}
}
y = ystart + 4;
if button_pressed = true
{
	button_pressed = false;
}
else
{
	button_pressed = true;
}
alarm[0] = 10;