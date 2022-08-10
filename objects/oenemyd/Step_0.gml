if (done == 0)
{
	vsp = vsp + grv
	//horizontal colisions	
	if (place_meeting(x+hsp,y,OWall) || place_meeting(x+hsp,y,OAcid)|| place_meeting(x+hsp,y,ODirt))
	{
		while (!place_meeting(x+hsp,y,OWall) && !place_meeting(x+hsp,y,OAcid)&& !place_meeting(x+hsp,y,ODirt))
		{
				x += sign(hsp);
		}
		hsp= -hsp;
	}
	x += hsp;

	if (place_meeting(x,y+vsp,OWall) || place_meeting(x,y+vsp,OAcid)|| place_meeting(x,y+vsp,ODirt))
	{
		if(vsp>0)
		{
			done = 1;
			image_index = 1;
		}; 
		while (!place_meeting(x,y+vsp,OWall) && !place_meeting(x,y+vsp,OAcid)&& !place_meeting(x,y+vsp,ODirt))
		{
				y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}