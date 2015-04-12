///scrEndGame()

with (objPowerup) {
    alarm[1] = 1;
}

var whichSound = choose(sndGameOver1,sndGameOver2,
  sndGameOver3,sndGameOver4,sndGameOver5,sndGameOver6,sndGameOver7);

audio_play_sound_on(sfxEmit,whichSound,false,75);

if (!isVersus) {
    if (score > highScore) {
        highScore = score;
    }
} else {
    globalvar angelScore;
    globalvar devilScore;
    
    with (objAngel) {
        angelScore = myScore;
    }
    
    with (objDevil) {
        devilScore = myScore;
    }
}

gamepad_set_vibration(0,0,0);

with (objControl) {
    alarm[3] = 2;
}

audio_stop_sound(sndMusic);
gamepad_set_vibration(0,0,0);
gamepad_set_vibration(1,0,0);