execute as @a unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s ability029-01 -10
# execute as @e unless entity @s[scores={ability029-00=1..}] run scoreboard players set @s ability029-02 0
scoreboard players set @a[scores={ability029-00=1..,ability029-01=1..,ability029-02=0,OnGround=0}] ability029-02 1
execute as @a[scores={ability029-00=1..,ability029-01=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s
execute as @a[scores={ability029-00=1..,ability029-01=0}] unless entity @s[scores={ability029-02=1..}] run title @s actionbar [{"text":"Jump to activate Seismic Slam.","color":"yellow"}]
execute as @a[scores={ability029-02=1}] run attribute @s minecraft:generic.gravity modifier add ability029_gravity -8 add_multiplied_total
execute at @a[scores={ability029-02=1}] run function ss_particles:fire_ring
execute as @a[scores={ability029-02=1}] at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 2
execute as @a[scores={ability029-02=6}] run attribute @s minecraft:generic.gravity modifier remove ability029_gravity
execute as @a[scores={ability029-02=25}] run attribute @s minecraft:generic.gravity modifier add ability029_gravity 8 add_multiplied_total
execute as @a[scores={ability029-02=25}] at @s run playsound minecraft:ui.toast.out master @a ~ ~ ~ 2
execute at @a[scores={ability029-02=1..}] run particle explosion
execute at @a[scores={ability029-02=24..}] run particle lava
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run particle explosion_emitter ~ ~ ~ 1 1 1 0 5
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run playsound minecraft:entity.lightning_bolt.impact master @a
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run playsound minecraft:entity.generic.explode master @a
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s run playsound minecraft:entity.generic.big_fall master @a ~ ~ ~ 1 0.5
scoreboard players set @a[scores={ability029-02=1..}] ability001 300
execute as @a[scores={ability029-02=1..,ability029-03=0,OnGround=1}] run attribute @s minecraft:generic.gravity modifier remove ability029_gravity

# water score decrease
execute as @a[scores={ability029-02=1..}] at @s if block ~ ~ ~ water run scoreboard players remove @s ability029-02 3
execute as @a[scores={ability029-02=0}] run attribute @s minecraft:generic.gravity modifier remove ability029_gravity

scoreboard players set @a[scores={ability029-02=1..,OnGround=1}] ability001 61

# execute at @a[scores={ability029-02=1..,OnGround=1}] run effect give @e[type=!#ss_library:not_alive,scores={ability029-02=0},distance=..10] resistance 1 3 true
# execute at @a[scores={ability029-02=1..,OnGround=1}] at @e[type=!#ss_library:not_alive,scores={ability029-02=0},distance=..10] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1b}

execute as @a[scores={ability029-02=141..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..10,dy=-3] unless entity @s[scores={ability029-02=1..}] run damage @s 30 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=121..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..9,dy=-3] unless entity @s[scores={ability029-02=1..}] run damage @s 27 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=101..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..8,dy=-2] unless entity @s[scores={ability029-02=1..}] run damage @s 24 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=81..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..7,dy=-2] unless entity @s[scores={ability029-02=1..}] run damage @s 21 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=61..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..6,dy=-1] unless entity @s[scores={ability029-02=1..}] run damage @s 18 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..5,dy=-1] unless entity @s[scores={ability029-02=1..}] run damage @s 15 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]

execute as @a[scores={ability029-02=141..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..10,dy=3] unless entity @s[scores={ability029-02=1..}] run damage @s 30 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=121..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..9,dy=3] unless entity @s[scores={ability029-02=1..}] run damage @s 27 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=101..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..8,dy=2] unless entity @s[scores={ability029-02=1..}] run damage @s 24 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=81..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..7,dy=2] unless entity @s[scores={ability029-02=1..}] run damage @s 21 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=61..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..6,dy=1] unless entity @s[scores={ability029-02=1..}] run damage @s 18 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]
execute as @a[scores={ability029-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..5,dy=1] unless entity @s[scores={ability029-02=1..}] run damage @s 15 minecraft:player_attack by @p[scores={ability029-02=1..,OnGround=1}]

execute as @a[scores={ability029-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s strength 2 1 true
execute as @a[scores={ability029-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s speed 3 1 true

title @a[scores={ability029-02=1..,OnGround=1}] actionbar [{"text":"Seismic Slam cooling down...","color":"red"}]
scoreboard players set @a[scores={ability029-02=1..,OnGround=1}] ability029-03 200
scoreboard players set @a[scores={ability029-03=1..}] ability029-01 -12
scoreboard players remove @a[scores={ability029-03=1..}] ability029-03 1
# execute as @a[scores={ability029-00=1..,ability029-01=-20,ability029-02=0}] if entity @s[scores={ability029-01=..-1}] run title @s actionbar [{"text":"Crouch to charge Seismic Slam.","color":"gold"}]
scoreboard players set @a[scores={ability029-00=1..,ability029-03=1}] ability029-00 3
execute as @a[scores={ability029-03=1}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.7
scoreboard players add @a[scores={ability029-01=..-11}] ability029-01 1
title @a[scores={ability029-00=3,ability029-03=..1}] actionbar [{"text":"Crouch to charge Seismic Slam.","color":"gold"}]

scoreboard players add @a[scores={ability029-02=1..}] ability029-02 1
scoreboard players set @a[scores={ability029-02=..-1}] ability029-02 0
scoreboard players set @a[scores={OnGround=1}] ability029-02 0

scoreboard players remove @a[scores={ability029-00=1..}] ability029-00 1