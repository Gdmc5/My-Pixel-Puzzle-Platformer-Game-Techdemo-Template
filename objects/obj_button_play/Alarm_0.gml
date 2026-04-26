/// @description Click On Play Button Code

// Inherit the parent event
event_inherited();
// Set Game State Mode to 1 Ingameplay Mode and Set Land to 0 Testing Debugging Land and Set Stage to 0
global.game_state_mode = 1;
obj_game_controller.land = 0;
obj_game_controller.stage = 0;
// Goto Land 0 Testing Debugging Land Stage 0 :3
room_goto(stage_land_00_00);
