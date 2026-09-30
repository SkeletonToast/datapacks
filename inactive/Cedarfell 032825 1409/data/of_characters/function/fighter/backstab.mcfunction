execute at @s on attacker store result score @n[type=!#ss_lib:not_alive,distance=0] generic_e run data get entity @s Rotation[0]
execute store result score @s generic_d run data get entity @s Rotation[0]
# scoreboard players operation @s[scores={generic_e=..-1}] generic_e *= @s -1
# scoreboard players operation @s[scores={generic_d=..-1}] generic_d *= @s -1
scoreboard players operation @s generic_d -= @s generic_e

execute at @s[scores={generic_d=-30..30},type=!#minecraft:undead] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[scores={generic_d=-30..30},type=#minecraft:undead] run particle block{block_state:"minecraft:bone_block"} ~ ~1 ~ 0.1 0.1 0.1 0 10

# tag @s[scores={generic_d=-30..30}] add StatusEligible
execute as @s[scores={generic_d=-30..30}] on attacker as @s[scores={of_origin=3}] at @s anchored eyes positioned ^ ^ ^ run function of_characters:fighter/praetor/damage_effects
execute at @s anchored eyes on attacker run damage @n[type=!#ss_lib:not_alive,distance=0,scores={generic_d=-30..30}] 4 player_attack by @s from @s