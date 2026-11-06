scoreboard players set @a[scores={species=010}] ability003 1
scoreboard players set @a[scores={species=010}] ability010 1
execute as @a[scores={species=010}] at @s if block ~ ~ ~ #minecraft:leaves run scoreboard players add @s species010-01 2
execute as @a[scores={species=010}] at @s if block ~ ~1 ~ #minecraft:leaves run scoreboard players remove @s species010-01 1
execute as @a[scores={species=010}] at @s unless block ~ ~ ~ #minecraft:leaves run scoreboard players set @s species010-01 0
effect give @a[scores={species010-01=400..}] minecraft:regeneration 4 1 true
effect give @a[scores={species010-01=400..,Food=..19}] minecraft:saturation 1 3 true
scoreboard players set @a[scores={species010-01=400..}] species010-01 0

execute as @a[scores={species=010},predicate=ss_species:in_forest] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}

# rooting
execute at @a[scores={species=010,DamageDealt=1..}] as @a[distance=..10,scores={DamageTaken=1..,OnGround=1}] at @s on attacker if entity @s[scores={species=010}] as @p[distance=0] unless entity @s[scores={rooted_timer=1..}] run scoreboard players set @s rooted_timer 10
execute at @a[scores={species=010,DamageDealt=1..}] as @e[distance=..10,type=!#ss_library:not_alive,type=!minecraft:player] at @s on attacker if entity @s[scores={species=010}] as @n[distance=0] unless entity @s[scores={rooted_timer=1..}] run scoreboard players set @s rooted_timer 10

execute as @a[scores={species=010,OnGround=1},predicate=ss_species:fawn_replant] at @s run function ss_species:s_010f_replant
execute as @a[scores={species=010,OnGround=1},level=1..,predicate=ss_species:fawn_cropgrowth] at @s run function ss_species:s_010f_cropgrowth