/// @description Piece Token Object Collision with Player Object Event Code
// Collected Piece Token
obj_game_controller.currency += 1;
audio_play_sound(sfx_collect, 0, false);
effect_create_depth(-1000, ef_spark, x+4, y, 1, c_aqua);
instance_destroy(self);