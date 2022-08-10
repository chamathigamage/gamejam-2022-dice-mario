audio_stop_all();
hsp = 0; //horizontal speed
vsp = 0;// vertical speed
grv = 0.3;//gravity
hspWalk = 4;//walkspeed
vspJump = -8;//Jumpspeed
precisionValue = 1; //idk what this does its just here ig
global.dicehp = 1; //dies instantly
global.roll = round(random(5))
//powers = [ "nothing", "no monster damage", "nothing", "double jump", "nothing","glock"];
powers = [ "nothing", "no monster damage", "acid proof", "double jump", "nothing","glock"];
jumps = 0;
global.specialPower = powers[global.roll]
if (global.specialPower == "glock")
{
	instance_create_layer(x, y, "Glock", OGlock)
}
audio_play_sound(backgroundSound, 1, true)
global.dices = [dice1, dice2, dice3, dice4, dice5, dice6];
sprite_index = global.dices[global.roll]

draw_xscale = 1;
draw_yscale = 1;