execute as @a[scores={ability030=1..}] run attribute @s minecraft:player.sneaking_speed modifier add ability030_sneaking_speed 1 add_multiplied_base

scoreboard players add @a[scores={ability030=1..,ItemSelected=0}] ability030-01 1
scoreboard players add @a[scores={ability030=1..},predicate=ss_library:lightlevel_5_max] ability030-01 1
scoreboard players add @a[scores={ability030=1..},predicate=ss_abilities:stealthy_weather] ability030-01 1
scoreboard players add @a[scores={ability030=1..},predicate=ss_library:is_sneaking] ability030-01 1
scoreboard players add @a[scores={ability030=1..,Health=..5}] ability030-01 1

scoreboard players set @a[scores={ability030=1..,Naked=0}] ability030-01 0

effect give @a[scores={ability030=1..,ability030-01=2..}] invisibility 1 0 true
effect give @a[scores={ability030=1..,ability030-01=2..}] resistance 1 2 true
effect clear @a[scores={ability030=1..,ability030-01=2..}] glowing
execute as @a[scores={ability030=1..,ability030-01=2..}] at @s run function ss_statuses:lightweight {"multiplier":"0.2"}

execute at @a[scores={ability030=1..,DamageDealt=1..}] as @e[distance=..5,type=#ss_library:hostile] at @s on attacker if entity @s[scores={ability030=1..,DamageDealt=1..}] run scoreboard players add @n[distance=0,type=#ss_library:hostile] ability030-02 100
execute at @a[scores={ability030=1..}] as @e[distance=..5,type=#ss_library:hostile,scores={ability030-02=1..99}] run scoreboard players set @s ability030 100
execute as @a[scores={ability030=1..,ability030-01=2..}] at @s run function ss_abilities:ab_030f_pacify with entity @s
scoreboard players remove @e[type=#ss_library:hostile,scores={ability030-02=1..}] ability030-02 1

effect clear @a[scores={ability030=1..,ability030-01=..1}] invisibility