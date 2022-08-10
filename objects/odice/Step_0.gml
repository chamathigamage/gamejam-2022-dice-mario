//get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

//Calculate Movement
hsp = (key_right - key_left) * hspWalk;
vsp = vsp + grv;

if(global.specialPower == "double jump") {
	maxJumps = 3;
} else {
	maxJumps = 1;
}

//Horizontal Collision
// Currently when you jump in the very middle of an acid block is when you die (and no other time loll)

if (place_meeting(x+hsp,y,ParentObj))
{
	while (abs(hsp)>precisionValue)
	{
			hsp *= 0.5;
			if(!place_meeting(x+hsp,y,ParentObj)) y += hsp;
			//the tutorial says that this is so that the box isnt exactly touching the wall bc there are some collision /precision errors that can arise
	}
	hsp = 0;
}

x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,ParentObj))
{
	if(vsp>0) jumps = maxJumps;
	while (abs(vsp)>precisionValue)
	{
			vsp *= 0.5;
			if(!place_meeting(x, y+vsp,ParentObj)) y += vsp;
	}
	vsp = 0;
}

// Verical Collision
if (place_meeting(x, y+vsp, OAcid) && global.specialPower == "acid proof")
{
	while (!place_meeting(x, y+sign(vsp), OAcid))
	{
		y += sign(vsp);
	}
	vsp=0;
}

y += vsp;

//Work out if we should jump
function jumpAvailable() {
	if (jumps > 0) && (key_jump)
	{
		vsp = vspJump;
		jumps--;
		audio_play_sound(jumpSound, 1, false)
		draw_yscale = 1.10;
		draw_xscale = 0.80;

	}
}


jumpAvailable()

//game restarts when the die dies
if (global.dicehp < 1) 
{
	audio_play_sound(deadSound, 1, false)
	x = global.checkpoint_x;
	y = global.checkpoint_y;
	global.dicehp = 1;
}

draw_xscale = lerp(draw_xscale, 1, 0.1);
draw_yscale = lerp(draw_yscale, 1, 0.1);

//landing function
if(place_meeting(x,y+1,ParentObj) && !place_meeting(x,yprevious+1,ParentObj))
{
	draw_yscale = 0.80;
	draw_xscale = 1.10;
}

// animation
if (hsp != 0) image_xscale = sign(hsp);

if  (global.specialPower != "acid proof" && (place_meeting(x,y+vsp,OAcid)||place_meeting(x+hsp,y,OAcid)) )
{
	global.dicehp -= 1;
}



	