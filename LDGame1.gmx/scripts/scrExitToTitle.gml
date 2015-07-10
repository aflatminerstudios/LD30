/// scrExitToTitle(turnOffAllSounds)

var turnOffAllSounds = argument0;

if(turnOffAllSounds)
  audio_stop_all();
  
scrEndVibration();

room_goto(rmTitle);

