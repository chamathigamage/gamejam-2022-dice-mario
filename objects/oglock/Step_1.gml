x = ODice.x + 32;
y = ODice.y

image_angle = point_direction(x, y, mouse_x, mouse_y);
firingDelay--;
recoil = max(0, recoil - 1);
if (mouse_check_button(mb_left)) && (firingDelay<0)
{
	recoil = 4;
	firingDelay = 5;
	with (instance_create_layer(x, y, "Bullet", OBullet))
	{
		audio_play_sound(GunSound, 1, false)
		speed= 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction
	}
}

x = x -lengthdir_x(recoil, image_angle);
y = y -lengthdir_y(recoil, image_angle);

if (image_angle> 90) && (image_angle< 270)
{
	image_yscale = -1
}	
else 
{
	image_yscale = 1
}