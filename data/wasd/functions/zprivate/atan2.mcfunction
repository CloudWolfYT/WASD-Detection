## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp math = in math
scoreboard players operation #temp1 math = in1 math
execute if score #temp math matches ..-1 run scoreboard players operation #temp math *= #-1 constant
execute if score #temp1 math matches ..-1 run scoreboard players operation #temp1 math *= #-1 constant
scoreboard players operation #temp2 math = #temp math
scoreboard players operation #temp2 math < #temp1 math
scoreboard players operation #temp3 math = #temp math
scoreboard players operation #temp3 math > #temp1 math
scoreboard players operation #temp2 math *= #1000 constant
scoreboard players operation #temp2 math /= #temp3 math
## s
scoreboard players operation #temp3 math = #temp2 math
scoreboard players operation #temp3 math *= #temp3 math
scoreboard players operation #temp3 math /= #1000 constant
## r
scoreboard players operation out math = #temp3 math
scoreboard players operation out math *= #-46496 constant
scoreboard players operation out math /= #100000 constant
scoreboard players add out math 1593
scoreboard players operation out math *= #temp3 math
scoreboard players operation out math /= #1000 constant
scoreboard players remove out math 3276
scoreboard players operation out math *= #temp3 math
scoreboard players operation out math /= #1000 constant
scoreboard players operation out math *= #temp2 math
scoreboard players operation out math /= #10000 constant
scoreboard players operation out math += #temp2 math
execute if score #temp1 math > #temp math run scoreboard players remove out math 1570
execute if score #temp1 math > #temp math run scoreboard players operation out math *= #-1 constant
execute if score in math matches ..-1 run scoreboard players remove out math 3141
execute if score in math matches ..-1 run scoreboard players operation out math *= #-1 constant
execute if score in1 math matches ..-1 run scoreboard players operation out math *= #-1 constant
## rad 2 deg
scoreboard players operation out math *= #57295 constant
scoreboard players operation out math /= #1000000 constant