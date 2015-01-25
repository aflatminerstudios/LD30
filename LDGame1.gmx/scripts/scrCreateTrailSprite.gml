///scrCreateTrailSprite(instanceToTrail, timeToLive, silhouetteColor)

var instanceToTrail = argument0;
var timeToLive = argument1;
var silhouetteColor = argument2;

var trailSprite = instance_create(instanceToTrail.x, instanceToTrail.y, objSpriteTrail);
trailSprite.sprite_index = instanceToTrail.sprite_index;
trailSprite.image_index = instanceToTrail.image_index;
trailSprite.image_xscale = instanceToTrail.image_xscale;
trailSprite.image_yscale = instanceToTrail.image_yscale;
trailSprite.image_angle = instanceToTrail.image_angle;
trailSprite.blendColor = silhouetteColor;
trailSprite.image_alpha = instanceToTrail.image_alpha;

trailSprite.alarm[0] = timeToLive;
trailSprite.timeToLive = timeToLive;
trailSprite.image_speed = 0;
trailSprite.furthestDepth = instanceToTrail.depth + 1 + timeToLive;
trailSprite.closestDepth = instanceToTrail.depth + 1;
trailSprite.depth = trailSprite.furthestDepth;
