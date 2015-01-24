///scrMoveBar(bar, slider, volume)

bar = argument0;
slider = argument1;
volume = argument2;

slider.x = (volume/100 * bar.sprite_width) + (bar.x - bar.sprite_width/2);
show_debug_message("slider x " + string(slider.x));


