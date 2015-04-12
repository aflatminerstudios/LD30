/// scrOuyaPlayerGamepad(player)
/*
**  Usage:
**      ouya_player_gp(player)
**
**  Arguments:
**      Player      Player ID (1 to 4)
**
**  Returns:
**      Gamepad ID
**
**  Get the gamepad ID associated to this player, useuful when
**  plyers have more devices attached to their consoles, like
**  keyboaards, mouses, etc. 
**  Support for other types of gamepads besides OUYA's is limited (see line 29)
**  
**  Manuel Etchegaray
**
*/


var p, i, gp, found;
for (i=0; i<5; i++) {
    p[i] = -1;
}

for (i=0; i<8; i++) {
    state = "";
    var desc = gamepad_get_description(i);
    if string_pos("OUYA",string_upper(desc)) || string_pos("PS",string_upper(desc)) || string_pos("360",string_upper(desc)) {
        gp = 0;
        found = false;
        while (found == false && gp<5) {
            if p[gp] == -1 {
                p[gp] = i;
                found = true;
            }
            gp ++;
        }
    }
}

return p[argument0-1];