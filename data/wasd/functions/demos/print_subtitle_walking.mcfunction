function wasd:walking
title @a times 0 10 0
title @a title ""
data remove storage test temp
execute if score .w wasd matches 1 run data modify storage test temp append value '{"text":"W","color":"green"}'
execute if score .s wasd matches 1 run data modify storage test temp append value '{"text":"S","color":"green"}'
execute if score .a wasd matches 1 run data modify storage test temp append value '{"text":"A","color":"green"}'
execute if score .d wasd matches 1 run data modify storage test temp append value '{"text":"D","color":"green"}'
title @a subtitle [{"nbt":"temp[]","storage":"test","interpret":true,"separator":{"text":""}}]