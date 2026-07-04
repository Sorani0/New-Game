key_left =keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right =keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) ||keyboard_check(ord("W"));
key_down = keyboard_check(vk_down)|| keyboard_check(ord("S"));
//action keys
key_activate = keyboard_check(ord("F"));
sprint = keyboard_check(vk_shift);


input_direction = point_direction(0,0,key_right-key_left, key_down-key_up);
magnitude = (key_right-key_left) !=0 || (key_down-key_up) !=0;

//movement
h_speed = lengthdir_x(magnitude * Walk_speed, input_direction);
v_speed = lengthdir_y(magnitude * Walk_speed, input_direction);



if(place_meeting(x+h_speed,y,O_wall))
{
	while(!place_meeting(x+sign(h_speed),y,O_wall))
	{
		x = x + sign(h_speed);
	}
	h_speed =0;
};

x +=h_speed;

if(place_meeting(x,y+v_speed,O_wall))
{
	while(!place_meeting(x,y+sign(v_speed),O_wall))
	{
		y = y + sign(v_speed);
	}
	v_speed =0;
};


y += v_speed;