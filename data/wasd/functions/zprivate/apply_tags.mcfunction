## added functionality for those not utilizing perfect organization
tag @s remove wasd.w
tag @s remove wasd.a
tag @s remove wasd.s
tag @s remove wasd.d
execute if score .w wasd matches 1 run tag @s add wasd.w
execute if score .a wasd matches 1 run tag @s add wasd.a
execute if score .s wasd matches 1 run tag @s add wasd.s
execute if score .d wasd matches 1 run tag @s add wasd.d