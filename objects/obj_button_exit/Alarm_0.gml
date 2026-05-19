/// @description Click On Exit Button Code

// Inherit the parent event
event_inherited();
switch(global.game_mode)
{
case 0:
	room_goto(menu_title);
	break
case 1:
	room_goto(menu_main);
	break
case 99:
	room_goto(menu_dev);
	break
default:
room_goto(menu_dummy);
}