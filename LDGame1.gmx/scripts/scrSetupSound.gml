///scrSetupSound()

if (musicEmit != noone) {
    audio_emitter_free(musicEmit);
}

if (sfxEmit != noone) {
    audio_emitter_free(sfxEmit);
}


musicEmit = audio_emitter_create();
audio_emitter_gain(musicEmit, musicVolume);

sfxEmit = audio_emitter_create();
audio_emitter_gain(sfxEmit, sfxVolume);

