scoreboard objectives add safety_value dummy
scoreboard objectives add safety_value_1 minecraft.custom:walk_one_cm
scoreboard objectives add safety_value_2 minecraft.custom:crouch_one_cm
scoreboard objectives add safety_value_3 minecraft.custom:fall_one_cm

execute store result score @s safety_value run random value -2147483..2147483
execute store result score @s generic_a run random value -5438..9127
scoreboard players operation @s safety_value += @s safety_value_1
scoreboard players operation @s safety_value += @s safety_value_2
scoreboard players operation @s safety_value += @s safety_value_3
scoreboard players operation @s safety_value += @s Age
scoreboard players operation @s[scores={generic_a=2..}] safety_value *= @s generic_a
scoreboard players operation @s[scores={generic_b=2..}] safety_value /= @s generic_b
scoreboard players operation @s[scores={generic_c=2..}] safety_value += @s generic_c
scoreboard players operation @s[scores={generic_d=2..}] safety_value *= @s generic_d
scoreboard players operation @s[scores={generic_e=2..}] safety_value += @s generic_e
scoreboard players operation @s[scores={RestOrRespawn=2..}] safety_value /= @s RestOrRespawn

function parse:simple {score:safety_value,function:"ss_lib:keepmesafe"}

scoreboard objectives remove safety_value
scoreboard objectives remove safety_value_1
scoreboard objectives remove safety_value_2
scoreboard objectives remove safety_value_3