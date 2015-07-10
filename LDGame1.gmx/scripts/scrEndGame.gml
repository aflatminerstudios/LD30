///scrEndGame()

with (objPowerup) {
    alarm[1] = 1;
}

audio_stop_all();

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


with (objControl) {
    alarm[3] = 2;
}

audio_stop_sound(sndMusic);
scrEndVibration();
