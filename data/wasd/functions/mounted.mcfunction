data modify storage cw_wasd Motion set from entity @s Motion
execute store result score .x wasd run data get storage cw_wasd Motion[0] 1000.0
execute store result score .z wasd run data get storage cw_wasd Motion[2] 1000.0
function wasd:zprivate/input