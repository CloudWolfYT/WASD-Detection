function wasd:detect
function wasd:_wasd/mounted
title @a times 0 10 0
title @a title ""
data remove storage test temp
data remove storage test temp1
execute if score .w wasd matches 1 run data modify storage test temp append value '{"text":"W","color":"green"}'
execute if score .s wasd matches 1 run data modify storage test temp append value '{"text":"S","color":"green"}'
execute if score .a wasd matches 1 run data modify storage test temp append value '{"text":"A","color":"green"}'
execute if score .d wasd matches 1 run data modify storage test temp append value '{"text":"D","color":"green"}'
execute as @a if entity @s[tag=wasd.forward] run data modify storage test temp1 append value '{"text":"W","color":"aqua"}'
execute as @a if entity @s[tag=wasd.backward] run data modify storage test temp1 append value '{"text":"S","color":"aqua"}'
execute as @a if entity @s[tag=wasd.left] run data modify storage test temp1 append value '{"text":"A","color":"aqua"}'
execute as @a if entity @s[tag=wasd.right] run data modify storage test temp1 append value '{"text":"D","color":"aqua"}'
title @a subtitle [{"text":"Mine="},{"nbt":"temp[]","storage":"test","interpret":true,"separator":{"text":""}},{"text":" | Onno="},{"nbt":"temp1[]","storage":"test","interpret":true,"separator":{"text":""}}]