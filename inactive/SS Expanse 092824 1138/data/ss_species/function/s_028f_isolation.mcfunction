schedule function ss_species:s_028f_isolation 20t

execute unless entity @a[scores={species=028}] run return fail

execute as @a[scores={species=028}] run scoreboard players set @s species028-01 70
execute as @a[scores={species=028}] run scoreboard players operation @s species028-01 += @s Health
execute as @a[scores={species=028}] run scoreboard players operation @s species028-01 += @s Food
execute as @a[scores={species=028}] run scoreboard players operation @s species028-01 += @s Armor
    execute as @a[scores={species=028}] run scoreboard players operation @s species028-01 += @s Armor

execute as @a[scores={species=028}] at @s as @a[distance=..50] unless entity @s[scores={species=028}] run scoreboard players remove @p[distance=..0,scores={species=028}] species028-01 10
execute as @a[scores={species=028}] at @s as @e[type=villager,distance=..50] at @s run scoreboard players remove @p[distance=..0,scores={species=028}] species028-01 1
execute as @a[scores={species=028}] at @s as @e[type=#ss_library:hostile,distance=..50] at @s run scoreboard players add @p[distance=..0,scores={species=028}] species028-01 10