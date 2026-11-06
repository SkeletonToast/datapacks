scoreboard players set @a[scores={TimeSinceDeath=1}] ability021-01 0
scoreboard players set @a[scores={ability021-03=..0,OnGround=1}] ability021-01 0

execute as @a[scores={ability021-00=1..,ability021-01=0..,ability021-02=..0,ability021-03=..0},predicate=ss_library:is_sneaking] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^ ^7 0 0 0 0 1 normal @s
execute as @a[scores={ability021-00=1..,ability021-01=1..}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run scoreboard players add @s ability021-02 1
execute as @a[scores={ability021-03=1}] at @s anchored eyes run playsound minecraft:entity.arrow.hit_player master @s
execute as @a[scores={ability021-03=1}] run title @s actionbar [{"text":"Sanguine Step is ready","color":"red"}]
# execute as @a[scores={ability021-00=1..,ability021-01=-1,ability021-03=..0}] at @s anchored eyes run playsound minecraft:entity.arrow.hit_player master @s
# execute as @a[scores={ability021-02=1,ability021-03=..0}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run particle minecraft:explosion ~ ~1 ~
execute as @a[scores={ability021-02=1,ability021-03=..0}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run particle minecraft:explosion ^ ^ ^8
execute as @a[scores={ability021-02=9}] at @s anchored eyes run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.1
execute as @a[scores={ability021-02=9}] at @s anchored eyes run playsound minecraft:entity.enderman.teleport master @a ^ ^ ^7 1 1.1
execute as @a[scores={ability021-02=1..,ability021-03=..0}] at @s anchored eyes run particle dust{color:[0.502,0.000,0.000],scale:1} ^ ^ ^7 0 0 0 0 1 normal

# cool particles
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7
execute as @a[scores={ability021-02=9}] at @s anchored eyes run particle minecraft:crimson_spore ^ ^ ^7

scoreboard players remove @e[type=!#ss_library:not_alive,scores={ability021-01=1..,ability021-02=1..}] ability021-01 1
scoreboard players add @a[scores={ability021-01=..0,ability021-02=1..}] ability021-02 1

# scoreboard players set @a[scores={ability021-02=10}] ability021-03 13
# execute as @a[scores={ability021-02=10}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run scoreboard players set @s ability021-03 77
# execute as @a[scores={ability021-02=10}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run tp @s ^ ^ ^7
# execute as @a[scores={ability021-00=1..,ability021-02=10}] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run tellraw @s [{"text":"Sanguine Step cooling down","color":"dark_red"}]

scoreboard players set @a[scores={ability021-02=10}] ability021-03 77
execute as @a[scores={ability021-02=10}] at @s anchored eyes positioned ^ ^ ^7 run tp @s ~ ~-1 ~
title @a[scores={ability021-00=1..,ability021-02=10}] actionbar [{"text":"Sanguine Step cooling down","color":"dark_red"}]

execute as @a[scores={ability021-00=1..,ability021-01=1..}] at @s anchored eyes unless block ^ ^ ^7 #ss_library:nonsolidblocks run scoreboard players set @s ability021-01 0
scoreboard players set @a[scores={ability021-02=11..}] ability021-02 0
scoreboard players remove @a[scores={ability021-03=1..}] ability021-03 1
execute as @a[scores={ability021-02=1..}] run tp @s @s
scoreboard players set @a[scores={ability021-03=1..,ability021-01=-2..}] ability021-01 -3
effect give @a[scores={ability021-02=2}] minecraft:slow_falling 1 0 true
effect give @a[scores={ability021-02=10}] speed 2 1 true
effect give @a[scores={ability021-02=10}] haste 2 2 true
scoreboard players set @a[scores={ability021-02=10}] ability001 40
# scoreboard players set @a[scores={ability021-03=1..}] ability021-02 0

scoreboard players add @a[scores={ability021-00=1..,ability021-01=..-1,ability021-03=..0}] ability021-01 1

scoreboard players remove @a[scores={DamageDealt=1..}] ability021-03 20