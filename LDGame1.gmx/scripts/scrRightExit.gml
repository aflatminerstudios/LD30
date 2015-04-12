///scrRightExit(soul)
///When a soul exits the right way

var soul = argument0;
var pts = soul.points;
var mult = multiplier;

numberRight += 1;

if (soul.object_index = objGoodSoul) {
    numberGoodRight += 1;
    with (objAngel) {
       myScore += pts * mult * scoreMult;
    }
} else if (soul.object_index = objEvilSoul) {
    numberEvilRight += 1;
    with (objDevil) {
       myScore += pts * mult * scoreMult;
    }
}

score += pts * mult;