///scrKillPerson(person)

person = argument0;

with (person) {   
    ///Create death animation
    var r = irandom(2);
    
    switch(r) {
        case 0:
            sprite_index = sprDeath1;
            break;
        case 1:
            sprite_index = sprDeath2;
            break;
        case 2:
            sprite_index = sprDeath3;
    }
    var framesPerSecond = 6.0;
    image_speed = framesPerSecond / room_speed;   
    
    alarm[3] = (11.0 / framesPerSecond) * room_speed; 
}