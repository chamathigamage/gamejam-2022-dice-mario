vsp = vsp + grv

//Horizontal Collision
if (place_meeting(x+hsp,y,OWall) || place_meeting(x+hsp,y,OAcid)|| place_meeting(x+hsp,y,ODirt))
{
	while (!place_meeting(x+sign(hsp), y, OWall)&& !place_meeting(x+sign(hsp), y, OAcid) && !place_meeting(x+sign(hsp), y, ODirt))
	{
		x += sign(hsp);
	}
	hsp= -hsp;
}
x+= hsp;

//Verical Collision
if (place_meeting(x, y+vsp, OWall)|| place_meeting(x, y+vsp, ODirt) || place_meeting(x, y+vsp, OAcid))
{
	while (!place_meeting(x, y+sign(vsp), OWall)&& !place_meeting(x, y+sign(vsp), ODirt) && !place_meeting(x, y+sign(vsp), OAcid))
	{
		y += sign(vsp);
	}
	vsp=0;
}
y+= vsp;

//animation
if (hsp != 0) image_xscale = sign(-hsp);