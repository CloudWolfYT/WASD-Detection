data modify storage cw_wasd Pos set from entity @s Pos
execute store result score .x wasd run data get storage cw_wasd Pos[0] 100.0
execute store result score .z wasd run data get storage cw_wasd Pos[2] 100.0
scoreboard players operation #temp wasd.x = .x wasd
scoreboard players operation #temp wasd.z = .z wasd
scoreboard players operation .x wasd -= @s wasd.x
scoreboard players operation .z wasd -= @s wasd.z
function wasd:zprivate/input
scoreboard players operation @s wasd.x = #temp wasd.x
scoreboard players operation @s wasd.z = #temp wasd.z