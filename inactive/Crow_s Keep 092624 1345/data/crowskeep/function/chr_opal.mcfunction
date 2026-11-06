scoreboard players set @s CharacterSpecies 7

effect give @s[tag=!species007-01] blindness 5 0 true
effect clear @s[tag=species007-01] blindness
execute at @s[scores={DamageTaken=1..},tag=!species007-01] run effect give @e[type=!#ss_library:not_alive,distance=..30] glowing 2 0 true
execute at @s[scores={DamageDealt=1..},tag=!species007-01] run effect give @e[type=!#ss_library:not_alive,distance=..20] glowing 5 0 true
execute at @s[tag=!species007-01] anchored eyes positioned ^ ^ ^7 as @e[type=!#ss_library:not_alive,distance=..3] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s glowing 1 0 true
execute at @s[tag=!species007-01] anchored eyes positioned ^ ^ ^10 as @e[type=!#ss_library:not_alive,distance=..3] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s glowing 1 0 true
execute on attacker run effect give @s glowing 5 0 true
execute at @s[tag=!species007-01] as @e[type=!player,distance=..50] at @s on target if entity @s[tag=chr_Opal] run effect give @e[type=!#ss_library:not_alive,distance=0] glowing 1 0 true