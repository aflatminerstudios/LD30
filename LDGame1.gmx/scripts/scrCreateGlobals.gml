///scrCreateGlobals()

globalvar soulSpeed;
globalvar personSpeed; //Walking speed
globalvar baseSoulSpeed;
globalvar basePersonSpeed;

globalvar freezeSeconds;

globalvar baseSpeed;
globalvar maxSpeed; //Max speed of player
globalvar maxPeople;
globalvar minLife;
globalvar maxLife;
globalvar halfLife;
globalvar quarterLife;
globalvar pctGood;
globalvar pctWrong;
globalvar pctRespawn;
globalvar numberRight;
globalvar numberWrong;
globalvar numberGoodRight;
globalvar numberEvilRight;
globalvar numberGoodWrong;
globalvar numberEvilWrong;
globalvar basePoints;
globalvar maxPoints;
globalvar highScore;
globalvar multiplier;
globalvar globalvolume;
globalvar musicVolume;
globalvar sfxVolume;
globalvar totalTime;

globalvar musicEmit;
globalvar sfxEmit;

globalvar numGamePads;

musicEmit = noone;
sfxEmit = noone;

numGamePads = 1;

baseSoulSpeed = 2.5 * 60/room_speed;
basePersonSpeed = 0.8 * 60/room_speed;
soulSpeed = baseSoulSpeed;
personSpeed = basePersonSpeed;
baseSpeed = 5 * 60/room_speed;
maxSpeed = 5 * 60/room_speed;

freezeSeconds = 2;

maxPeople = 20;
minLife = 1;
maxLife = 10;
halfLife = 7;
quarterLife = 8.5;

pctGood = 0.5;
pctWrong = 0.5;
pctRespawn = 0.4;

numberRight = 0;
numberWrong = 0;
numberGoodRight = 0;
numberEvilRight = 0;
numberGoodWrong = 0;
numberEvilWrong = 0;

score = 0;
basePoints = 100;
maxPoints = 1500;
highScore = 0;

multiplier = 1;

globalVolume = 1;
musicVolume = 1;
sfxVolume = 1;

totalTime = 120;

scrSetupSound();