/// @description Reset Button's animate Code
switch (sprite_index)
{
case (spr_button_long):
	if button_selected = true
	{
	sprite_index = spr_button_long_selected;
	image_index = 0;
	}
	else
	{
	sprite_index = spr_button_long;
	image_index = 0;
	}
	break
case (spr_button_long_selected):
	sprite_index = spr_button_long_selected;
	break
default:
if button_selected = true
{
	sprite_index = spr_button_selected;
	image_index = 0;
}
else
{
sprite_index = spr_button;
image_index = 0;
}
}
y = ystart;