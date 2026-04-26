/// @description Dev Menu Select your Menu and Stage/Room UI Code
if button_pressed = true
{
	if keyboard_check_pressed(vk_left) and category_selected = true and category = 0
	{
		audio_play_sound(sfx_select, 0, false);
		if room_id <= 0
		{
		room_id = 5;
		}
		else
		{
		room_id -= 1;
		}
	}
	else if keyboard_check_pressed(vk_right) and category_selected = true and category = 0
	{
		audio_play_sound(sfx_select, 0, false);
		if room_id >= 5
		{
		room_id = 0;
		}
		else
		{
		room_id += 1;
		}
	}
	if keyboard_check_pressed(vk_enter) and category_selected = true and category = 0
	{
		audio_play_sound(sfx_confirm, 0, false);
		switch(room_id)
		{
		case 0:
		room_goto(menu_title);
		break
		case 1:
		room_goto(menu_main);
		break
		case 2:
		room_goto(menu_settings);
		break
		case 3:
		room_goto(menu_gameover);
		break
		case 4:
		room_goto(menu_dev);
		break
		default:
		room_goto(menu_dummy);
		}
	}
	else if keyboard_check_pressed(vk_enter) and category_selected = true and category = 1 and sub_category = 0
	{
		audio_play_sound(sfx_confirm, 0, false);
		if keyboard_check_pressed(vk_left)
		{
			audio_play_sound(sfx_select, 0, false);
			if land_id <= -1
			{
			land_id = 0;
			}
			else
			{
			land_id -= 1;
			}
		}
		else if keyboard_check_pressed(vk_right)
		{
		audio_play_sound(sfx_select, 0, false);
			if land_id >= 0
			{
			land_id = -1;
			}
			else
			{
			land_id += 1;
			}
		}
		else if keyboard_check_pressed(vk_enter) and category_selected = true and category = 1 and sub_category = 1
		{
		sub_category_selected = 0;
		audio_play_sound(sfx_confirm, 0, false);
			switch(land_id)
			{
			case 0:
			break
			default:
			}
			if keyboard_check_pressed(vk_left) and category_selected = true and category = 1 and sub_category = 1
			{
				audio_play_sound(sfx_select, 0, false);
				if room_id <= 0
				{
				room_id = 4;
				}
				else
				{
				room_id -= 1;
				}
			}
			else if keyboard_check_pressed(vk_right) and category_selected = true and category = 1 and sub_category = 1
			{
				audio_play_sound(sfx_select, 0, false);
				if room_id >= 4
				{
				room_id = 0;
				}
				else
				{
				room_id += 1;
				}
			}
				else if keyboard_check_pressed(vk_enter) and category_selected = true and category = 1 and sub_category = 2
				{
					audio_play_sound(sfx_confirm, 0, false);
					sub_category_selected = 1;
					if keyboard_check_pressed(vk_space)
					{
					// Set Game State Mode to 1 InGameplay Mode
					global.game_state_mode = 1;
					// Set Game Mode to 99 InGameplay Dev Mode
					global.game_mode = 99;
					switch(land_id)
					{
					case 0:
						switch(room_id)
						{
						case 0:
						room_goto(stage_land_00_00);
						break
						case 1:
						room_goto(stage_land_00_01);
						break
						case 2:
						room_goto(stage_land_00_02);
						break
						case 3:
						room_goto(stage_land_00_03);
						break
						default:
						room_goto(stage_dummy);
						}
					break
					default:
						switch(room_id)
						{
						default:
						room_goto(stage_dummy);
						}
					}
				}
			}
		}
	if keyboard_check_pressed(vk_enter) and category_selected = true and sub_category >= 0
	{
		sub_category += 1;
	}
	if keyboard_check(vk_backspace) and category_selected = true and sub_category >= 0
	{
		audio_play_sound(sfx_cancel, 0, false);
		sub_category -= 1;
		sub_category_selected -= 1;
		room_id = 0;
		land_id = 0;
	}
	if keyboard_check_pressed(vk_left) and category_selected = false
	{
		audio_play_sound(sfx_select, 0, false);
		if category <= 0
		{
			category = 1;
		}
		else
		{
		category -= 1;
		}
	}
	else if keyboard_check_pressed(vk_right) and category_selected = false
	{
		audio_play_sound(sfx_select, 0, false);
		if category >= 1
		{
			category = 0;
		}
		else
		{
		category += 1;
		}
	}
	else if keyboard_check_pressed(vk_enter) and category_selected = false
	{
	audio_play_sound(sfx_confirm, 0, false);
	category_selected = true;
	sub_category = 0;
	}
}
}
else
{
category = 0;
category_selected = false;
sub_category = -1;
sub_category_selected = -1;
room_id = 0;
land_id = 0;
}