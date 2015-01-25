///scrDecreaseOption(which)

var which = argument0;

var box = noone;

switch (which) {

    case (optTime): {
        box = timeChoice;
        
        switch (totalTime) {
        
            case (60):
                box = noone;
                break;
            
            case (120):
                totalTime = 60;
                break;
            
            case (180):
                totalTime = 120;    
                break;
            
            case (500):
                totalTime = 180;
                break;        
        }
                        
        break;
    }

    case (optPop): {
        box = popChoice;
        switch (maxPeople) {
        
            case (12):
                box = noone;
                break;
            
            case (20):
                maxPeople = 12;
                pctRespawn = 0.2;
                break;
            
            case (50):
                maxPeople = 20;    
                pctRespawn = 0.4;
                break;        
        }        
        
        break;
    }
    
    case (optDeath): {
        box = deathChoice;
        
        switch (maxLife) {
        
            case (15):
                box = noone;
                break;
            
            case (10):
                maxLife = 15;
                minLife = 1.5;
                halfLife = 8;
                quarterLife = 11;
                break;
            
            case (7):
                maxLife = 10;
                minLife = 1;
                halfLife = 7;
                quarterLife = 8.5;
                break;        
        }
        
        break;
    }
    
    case (optWorkload): {
        box = workChoice;
        
        switch (pctWrong) {
        
            case (0.25):
                box = noone;
                break;
            
            case (0.5):
                pctWrong = 0.25;
                break;
            
            case (0.75):
                pctWrong = 0.5;
                break;        
        }
        
        break;
    }
    
    case (optSFXVolume): {
        box = sfxChoice;
        
        switch (sfxVolume) {
        
            case (0.25):
                box = noone;
                break;
            
            case (0.5):
                sfxVolume = 0.25;
                audio_emitter_gain(sfxEmit, sfxVolume);
                break;
            
            case (1):
                sfxVolume = 0.5;
                audio_emitter_gain(sfxEmit, sfxVolume);
                break;        
        }
        
        break;
    }
    case (optMusicVolume): {
        box = musicChoice;
        
        switch (musicVolume) {
        
            case (0.25):
                box = noone;
                break;
            
            case (0.5):
                musicVolume = 0.25;
                audio_emitter_gain(musicEmit, musicVolume);
                break;
            
            case (1):
                musicVolume = 0.5;
                audio_emitter_gain(musicEmit, musicVolume);
                break;        
        }
        
        break;
    }
}

return box;
