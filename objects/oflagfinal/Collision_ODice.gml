if(!isActivated) {
	isActivated = true;
	instance_create_layer(x, y, "Wall", OFinalBanner)
	sprite_index = Flag_Passed;
	audio_play_sound(gameCompleteSound, 1, false)
}
