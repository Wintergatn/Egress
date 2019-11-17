distance = 16;
movement = MOVE;

right = keyboard_check_pressed(ord("D"));
left = keyboard_check_pressed(ord("A"));
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));


if(right && !(place_meeting(x+distance,y,obj_collideController)) ){
	//push box!
	face = DOWN_RIGHT;
	
	if(place_meeting(x+distance,y,obj_box)){
		box = instance_place(x+distance,y,obj_box)
		box.x+=distance;
		x+=distance;
	}else{
		x+=distance;	
	}
	
}else if(left && !(place_meeting(x-distance,y,obj_collideController))){
	face = DOWN_LEFT;
	
	if(place_meeting(x-distance,y,obj_box)){
		box = instance_place(x-distance,y,obj_box)
		box.x -=distance;
		x-=distance;
	}else{
		x-=distance;	
	}
	
}else if(up && !(place_meeting(x,y-distance,obj_collideController))){
	if (face == DOWN_RIGHT || face == UP_RIGHT) face = UP_RIGHT;
	else if (face == DOWN_LEFT || face == UP_LEFT) face = UP_LEFT;
	
	if(place_meeting(x,y-distance,obj_box)){
		box = instance_place(x,y-distance,obj_box)
		box.y -=distance;
		y-=distance;
	}else{
		y-=distance;	
	}
	
}else if(down && !(place_meeting(x,y+distance,obj_collideController))){
	if (face == DOWN_RIGHT || face == UP_RIGHT) face = DOWN_RIGHT;
	else if (face == DOWN_LEFT || face == UP_LEFT) face = DOWN_LEFT;
	
	if(place_meeting(x,y+distance,obj_box)){
		box = instance_place(x,y+distance,obj_box)
		box.y +=distance;
		y+=distance;
	}else{
		y+=distance;	
	}
	
}