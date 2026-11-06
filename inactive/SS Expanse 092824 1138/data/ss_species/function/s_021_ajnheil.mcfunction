scoreboard players set @a[scores={species=021}] ability001 1
scoreboard players set @a[scores={species=021}] ability004 1
scoreboard players set @a[scores={species=021,species021-01=1..,ability004-01=91..}] ability004-01 90
execute as @a[scores={species=021}] at @s if entity @e[type=villager,distance=..5] run effect give @s minecraft:hero_of_the_village 1 9 true
effect give @a[scores={species=021,species021-01=1..}] slowness 1 0 true

execute as @a[scores={species=021}] at @s if entity @a[scores={species=003},distance=..20] run scoreboard players add @s species003-21 1
execute as @a[scores={species=021}] at @s unless entity @a[scores={species=003},distance=..20] run scoreboard players remove @s species003-21 1
execute as @a[scores={species=021,species003-21=..-1}] at @s if entity @a[scores={species=003},distance=..20] run scoreboard players set @s species003-21 0
execute as @a[scores={species=021,species003-21=1..}] at @s unless entity @a[scores={species=003},distance=..20] run scoreboard players set @s species003-21 0
effect give @a[scores={species=021,species003-21=1..}] glowing 1 0 true

execute as @a[scores={species=021}] run attribute @s minecraft:generic.attack_damage base set 4
execute as @a[scores={species=021}] run attribute @s minecraft:generic.movement_speed base set 0.08
execute as @a[scores={species=021}] run attribute @s minecraft:generic.armor base set 10

scoreboard players set @a[scores={species021-01=1..}] species021-01 0

# species021-01 is for jumping i think?