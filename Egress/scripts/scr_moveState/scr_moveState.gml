distance = 32;

right = keyboard_check_pressed(ord("D"));
left = keyboard_check_pressed(ord("A"));
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));


if(right){
	x += distance;
	
}else if(left){
	x -= distance;
	
}else if(up){
	y -= distance;
	
}else if(down){
	y += distance;
	
}