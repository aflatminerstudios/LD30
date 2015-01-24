///scrCheckCtrl(ctrl)

ctrl = argument0;

var pressed = false;

if (gamepad_button_check_pressed(ctrl, gp_face1)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face2)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face3)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face4)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_select)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_start)) {
    pressed = true;
}

return pressed;