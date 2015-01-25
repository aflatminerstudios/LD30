///scrSoulExit(soul, dir)

soul = argument0;
dir = argument1;

var r = random(1);
var soundPlay = 0.2;

//Check soul type and if it exited the correct side
if (soul.object_index == objGoodSoul) {
    if (dir == up) {
        scrRightExit(soul);
    } else if (dir == down) {
        scrWrongExit(soul);
        instance_change(objDeadSoul, true);        

    }
    if (r < soundPlay) {
        var snd = audio_play_sound_on(sfxEmit,sndGoodCollected,false,50);
        audio_sound_gain(snd, 0.75, 0);
    }    
    
} else if (soul.object_index == objEvilSoul) {
    if (dir == down) {
        scrRightExit(soul);
    } else if (dir == up) {
        scrWrongExit(soul);
    }
    if (r < soundPlay) {
        audio_play_sound_on(sfxEmit,sndEvilCollected,false,50);
    }        
}

if (soul.connected != noone) {
    with (soul.connected) {
        instance_destroy();
    }
}

r = random(1);

if (r < pctRespawn) {
    r = random(1);
    //Randomly determine to start on left or right
    if (r < 0.5) {
        xCoord = -32;    
    } else {
        xCoord = 1056;
    }
    instance_create(xCoord, middle - 8, objPerson);
}

with (soul) {
    instance_change(objDeadSoul, true);
    soul.alarm[0] = room_speed / 4;
}
