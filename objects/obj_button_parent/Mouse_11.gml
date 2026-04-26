/// @description Not Hovering Over Button's With Mouse Code
if sprite_index = spr_button_long_selected
{
	sprite_index = spr_button_long;
	image_index = 0;
	button_selected = false;
}
else if sprite_index = spr_button_long
{
	sprite_index = spr_button_long;
	button_selected = false;
}
else
{
sprite_index = spr_button;
image_index = 0;
button_selected = false;
}