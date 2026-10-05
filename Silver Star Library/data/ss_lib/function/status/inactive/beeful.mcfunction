execute as @s[scores={DamageTaken=1..}] at @s on attacker run function ss_lib:status/inactive/beeful_summon_bee with entity @s
scoreboard players set @e[tag=tinybee,scores={Age=1..}] Age -200

scoreboard players set @s HasStatus 1