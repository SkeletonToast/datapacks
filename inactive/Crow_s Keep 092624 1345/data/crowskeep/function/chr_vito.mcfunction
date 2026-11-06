scoreboard players set @s CharacterSpecies 22
scoreboard players set @s[scores={ability004-01=180..}] ability002 1
scoreboard players set @s[predicate=ss_library:is_sneaking] ability002 1
scoreboard players set @s ability004 1
scoreboard players set @s[scores={ability004-01=181..}] ability004-01 180

scoreboard players operation @s chr-007 = @s chr-006
scoreboard players add @s chr-007 2
execute if score @s Food > @s chr-006 if score @s Food <= @s chr-007 run effect give @s hunger 5 49 true
scoreboard players add @s chr-007 6
execute if score @s Food >= @s chr-007 run effect give @s saturation 2 0 true
execute if score @s Food >= @s chr-007 run effect clear @s hunger
scoreboard players operation @s chr-006 = @s Food

execute as @s[predicate=ss_library:is_sprinting,x_rotation=90,scores={ability004-01=180..}] at @s anchored eyes as @e[type=!#ss_library:not_alive,distance=..1] unless entity @s[tag=chr_Vito,predicate=ss_library:is_sprinting] run damage @s 5 player_attack by @p[tag=chr_Vito,distance=0]
execute as @s[predicate=ss_library:is_sprinting,x_rotation=90] at @s anchored eyes as @e[type=!#ss_library:not_alive,distance=..0.7] unless entity @s[tag=chr_Vito,predicate=ss_library:is_sprinting] run damage @s 3 player_attack by @p[tag=chr_Vito,distance=0]