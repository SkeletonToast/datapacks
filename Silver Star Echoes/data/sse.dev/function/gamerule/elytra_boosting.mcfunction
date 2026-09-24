# manually enable/disable
execute if entity @s[scores={elytraBoosting=0..}] store result storage gamerule_elytra_boosting toggle int 1 run scoreboard players get @s elytraBoosting

# if toggled
execute if entity @s[scores={elytraBoosting=0..}] run return fail
execute store result score @s elytraBoosting run data get storage gamerule_elytra_boosting toggle
scoreboard players add @s elytraBoosting 1
scoreboard players set @s[scores={elytraBoosting=2..}] elytraBoosting 0
execute store result storage gamerule_elytra_boosting toggle int 1 run scoreboard players get @s elytraBoosting

# setting phantom player
execute store result score $sse.gamerule.elytra_boosting true run data get storage gamerule_elytra_boosting toggle