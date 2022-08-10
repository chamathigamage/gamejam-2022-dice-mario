if(!isActivated) {
	isActivated = true;
	with(ODice) { 	
	global.checkpoint_x = x;
	global.checkpoint_y = y;
	if (instance_exists(OGlock))
	{
		instance_destroy(OGlock)
	}
	global.roll = round(random(5));
	global.specialPower = powers[global.roll];
	if (global.specialPower == "glock")
		{
			instance_create_layer(x, y, "Glock", OGlock)
		}
		
sprite_index = global.dices[global.roll]

};
	instance_create_layer(x, y, "Wall", OAbilityBanner)
	sprite_index = Flag_Passed;
	audio_play_sound(flagSound, 1, false)
};
