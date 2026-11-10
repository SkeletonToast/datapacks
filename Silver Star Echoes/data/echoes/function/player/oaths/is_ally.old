execute if score @s sse.allegiance matches ..-1 run return 1
$execute if score $(target) sse.allegiance matches ..-1 run return 1
execute if score @s sse.allegiance matches 0 run return fail
$execute if score $(target) sse.allegiance matches 0 run return fail

scoreboard players operation @s generic_a = @s sse.allegiance
$scoreboard players operation @s generic_b = $(target) sse.allegiance

scoreboard players operation @s generic_min = @s generic_a
scoreboard players operation @s generic_max = @s generic_b
execute if score @s generic_b < @s generic_min run scoreboard players operation @s generic_min = @s generic_b
execute if score @s generic_a > @s generic_max run scoreboard players operation @s generic_max = @s generic_a

execute if score @s generic_min <= #const.20 value run scoreboard players operation @s generic_max -= @s generic_min
execute if score @s generic_min <= #const.20 value unless score @s generic_max <= #const.15 value run return fail

scoreboard players operation @s generic_c = @s generic_min
    scoreboard players add @s generic_c 10
    function math:percentage {base_score:generic_min,percentage:60}
scoreboard players add @s generic_min 72
execute if score @s generic_min < @s generic_c run scoreboard players operation @s generic_min = @s generic_c
execute if score @s generic_min < @s generic_max run return fail

return 1