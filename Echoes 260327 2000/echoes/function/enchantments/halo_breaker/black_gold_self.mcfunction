# execute as @s[scores={aegis_amplifier_max=0..}] run function echoes:player/combat/ichor_damage {"damage":100}
scoreboard players add @s ichor_damage 100
scoreboard players set @s aegis_amplifier_max -1