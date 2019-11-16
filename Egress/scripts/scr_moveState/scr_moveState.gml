distance = 64;

right = keyboard_check_pressed(ord("D"));
left = keyboard_check_pressed(ord("A"));
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));


if(right && !(place_meeting(x+distance,y,obj_collideController)) ){
	x += distance;
	
}else if(left && !(place_meeting(x-distance,y,obj_collideController))){
	x -= distance;
	
}else if(up && !(place_meeting(x,y-distance,obj_collideController))){
	y -= distance;
	
}else if(down && !(place_meeting(x,y+distance,obj_collideController))){
	y += distance;
	
}