/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	window_set_max_height(window_get_height() + 64);	
	window_set_max_width(window_get_width() + 64);	
	instance_destroy();
}
