///scrIncreaseOption(which)

var which = argument0;

var box = noone;

switch (which) {

    case (optTime): {
        box = timeChoice;
        
        switch (totalTime) {
        
            case (60):
                totalTime = 120;    
                break;
            
            case (120):
                totalTime = 180;
                break;
            
            case (180):
                totalTime = 500;
                break;
            
            case (500):
                box = noone;
                break;        
        }
                        
        break;
    }

    case (optPop): {
        box = popChoice;
        switch (maxPeople) {
        
            case (12):
                maxPeople = 20;    
                pctRespawn = 0.4;
                break;
            
            case (20):
                maxPeople = 50;
                pctRespawn = 0.7;
                break;
            
            case (50):
                box = noone;                
                break;        
        }        
        
        break;
    }
    
    case (optDeath): {
        box = deathChoice;
        
        switch (maxLife) {
        
            case (15):
                maxLife = 10;
                minLife = 1;
                halfLife = 7;
                quarterLife = 8.5;
                break;
            
            case (10):
                maxLife = 7;
                minLife = 0.5;
                halfLife = 4;
                quarterLife = 5.5;
                break;
            
            case (7):
                box = noone;
                break;        
        }
        
        break;
    }
    
    case (optWorkload): {
        box = workChoice;
        
        switch (pctWrong) {
        
            case (0.25):
                pctWrong = 0.5;
                break;
            
            case (0.5):
                pctWrong = 0.75;
                break;
            
            case (0.75):
                box = noone;
                break;        
        }
        
        break;
    }
    
    case (optSFXVolume): {
        box = sfxChoice;
        
        switch (sfxVolume) {
        
            case (0.25):
                sfxVolume = 0.5;
                audio_emitter_gain(sfxEmit, sfxVolume);
                break;
            
            case (0.5):
                sfxVolume = 1;
                audio_emitter_gain(sfxEmit, sfxVolume);
                break;
            
            case (1):
                box = noone;
                break;        
        }
        
        break;
    }
    case (optMusicVolume): {
        box = musicChoice;
        
        switch (musicVolume) {
        
            case (0.25):
                musicVolume = 0.5;
                audio_emitter_gain(musicEmit, musicVolume);
                break;
            
            case (0.5):
                musicVolume = 1;
                audio_emitter_gain(musicEmit, musicVolume);
                break;
            
            case (1):
                box = noone;
                break;        
        }
        
        break;
    }
    
}
return box;