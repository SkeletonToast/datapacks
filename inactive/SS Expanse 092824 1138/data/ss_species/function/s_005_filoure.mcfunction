scoreboard players set @a[scores={species=005}] ability001 1
scoreboard players set @a[scores={species=005}] ability002 1
scoreboard players set @a[scores={species=005}] ability004 1
scoreboard players set @a[scores={species=005}] ability011 1
scoreboard players set @a[scores={species=005}] ability027 1
execute as @a[scores={species=005}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute as @a[scores={species=005}] run attribute @s minecraft:generic.scale base set 0.95
effect give @a[scores={species=005,DamageDealt=1..}] speed 3 1 true
effect give @a[scores={species=005,DamageTaken=1..}] speed 3 1 true
# execute at @a[scores={species=005,species005-03=50..}] run playsound minecraft:entity.cat.hiss ambient @a ~ ~ ~
execute at @a[scores={species=005,DamageTaken=100..}] run playsound minecraft:entity.cat.hurt player @a ~ ~ ~

effect give @a[scores={species=005},predicate=ss_library:lightlevel_5_max] night_vision 11 0 true
execute as @a[scores={species=005}] unless entity @s[predicate=ss_library:lightlevel_5_max] run effect clear @s night_vision