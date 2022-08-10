x = ODice.x + 200;
y = ODice.y - 400;


displayNumber = string(global.roll+1);
text = "You have rolled "+ displayNumber + ":" + global.specialPower
boxWidth = sprite_get_width(textbox);
stringHeight = string_height(text);
timer = 250;