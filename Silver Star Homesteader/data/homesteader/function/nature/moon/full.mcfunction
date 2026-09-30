

execute unless score $day_time value matches 13000 run return fail
    # keep this as the last lines so that return fail works
execute store result score $minecraft.gamerule.random_tick_speed value run gamerule random_tick_speed
scoreboard players operation @s generic_a = $minecraft.gamerule.random_tick_speed value
scoreboard players operation @s generic_a *= @s 3
function parse:score_unended {score:generic_a,function:"homesteader:nature/moon/set_tick_speed"}