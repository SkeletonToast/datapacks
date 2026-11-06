scoreboard players set @a[scores={TimeSinceDeath=1}] ability016-01 0
scoreboard players add @a ability016-02 0
execute as @a[scores={ability016-00=1..,ability016-01=0..,ability016-02=..0,ability016-03=..0},predicate=ss_library:is_sneaking] at @s anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #ss_library:nonsolidblocks run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0 1 normal @s
execute as @a[scores={ability016-00=1..,ability016-01=1..,ability016-02=0,OnGround=0}] at @s anchored eyes run scoreboard players add @s ability016-02 1
execute as @a[scores={ability016-00=1..,ability016-01=-1,ability016-03=..0}] at @s anchored eyes run playsound minecraft:entity.arrow.hit_player master @s
execute as @a[scores={ability016-02=2,ability016-03=..0}] at @s anchored eyes run particle minecraft:sonic_boom ~ ~1 ~
execute as @a[scores={ability016-02=2,ability016-03=..0}] at @s anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #ss_library:nonsolidblocks run particle minecraft:sonic_boom ~ ~ ~
execute as @a[scores={ability016-02=10}] at @s anchored eyes run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.9
execute as @a[scores={ability016-02=10}] at @s anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #ss_library:nonsolidblocks run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.9
execute as @a[scores={ability016-02=1..,ability016-03=..0}] at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^10
scoreboard players add @a[scores={ability016-02=1..}] ability016-02 1

scoreboard players set @a[scores={ability016-02=13}] ability016-03 97
execute as @a[scores={ability016-02=13}] at @s anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #ss_library:nonsolidblocks run tp @s ~ ~-1 ~
title @a[scores={ability016-00=1..,ability016-02=13}] actionbar [{"text":"Shadow Step cooling down","color":"dark_aqua"}]

scoreboard players set @a[scores={ability016-02=14..}] ability016-02 0
scoreboard players remove @a[scores={ability016-03=1..}] ability016-03 1
execute as @a[scores={ability016-02=1..}] run tp @s @s
scoreboard players set @a[scores={ability016-03=1..,ability016-01=-2..}] ability016-01 -3
effect give @a[scores={ability016-02=3}] minecraft:slow_falling 1 0 true
effect give @a[scores={ability016-02=13}] minecraft:strength 1 1 true

#sanguine step dis-eligibility
scoreboard players set @a[scores={ability021-00=1..}] ability016-01 -50

title @a[scores={ability016-00=1..,ability016-01=-19}] actionbar [{"text":"Shadow Step warming up (crouch to accelerate)","color":"#008CC9"}]
scoreboard players add @a[scores={ability016-00=1..,ability016-01=..-1,ability016-03=..0}] ability016-01 1
execute as @a[scores={ability016-00=1..,ability016-01=-1}] run title @s actionbar [{"text":"Shadow Step is ready","color":"#00B2FF"}]

execute as @a[scores={ability016-00=0}] unless entity @s[scores={ability021-00=1..}] run scoreboard players set @s ability016-01 -20

scoreboard players set @a[scores={ability016-01=1..}] ability016-01 0

scoreboard players remove @a[scores={DamageDealt=1..}] ability016-03 25
scoreboard players set @a[scores={DamageDealt=1..,ability016-01=..-4}] ability016-01 -3

scoreboard players remove @a[scores={ability016-00=1..}] ability016-00 1