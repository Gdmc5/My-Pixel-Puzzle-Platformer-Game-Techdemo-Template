/// @description Tile Collision Parent Object Room Start Event Code
// 

switch(collision_mask_type)
{
	case 0:
	mask_index = spr_tilecollision_16px_mask;
	break
	case 1:
	mask_index = spr_tilecollision_10px_mask;
	break
	case 2:
	mask_index = spr_tilecollision_5px_mask;
	break
	case 3:
	mask_index = spr_tilecollision_upsidedown_10px_mask;
	break
	case 4:
	mask_index = spr_tilecollision_upsidedown_5px_mask;
	break
	default:
}