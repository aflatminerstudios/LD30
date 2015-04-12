///scrSpawnSoul(person)

person = argument0;

with (person) {
    //Spawn soul of a random type
    var r = random(1);
    
    if (x < 8) {
        x = 8;
    } else if (x > 1016) {
        x = 1016;
    }
    
    if (r < pctGood) {
        instance_create(x, y, objGoodSoul);
    } else {
        instance_create(x, y, objEvilSoul);
    }
}