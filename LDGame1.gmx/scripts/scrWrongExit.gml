///scrWrongExit(soul)
///When a soul exits the wrong way

var soul = argument0;
var pts = soul.points;
var mult = multiplier;

numberWrong += 1;

if (soul.object_index = objGoodSoul) {
    numberGoodWrong += 1;
    with (objAngel) {
        myScore += pts * mult;
    }
} else if (soul.object_index = objEvilSoul) {
    numberEvilWrong += 1;
    with (objDevil) {
        myScore += pts * mult;
    }
}

score -= pts * mult;

gamepad_set_vibration(0,0.75,0.75);