execute as @a unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s ability020-01 -30
# execute as @e unless entity @s[scores={ability020-00=1..}] run scoreboard players set @s ability020-02 0
execute at @a[scores={ability020-00=1..,ability020-01=1..,ability020-02=0,OnGround=0}] run particle explosion_emitter
execute at @a[scores={ability020-00=1..,ability020-01=1..,ability020-02=0,OnGround=0}] run playsound entity.player.big_fall player @a
execute at @a[scores={ability020-00=1..,ability020-01=1..,ability020-02=0,OnGround=0}] run summon creeper ~ ~ ~ {ExplosionRadius:-2,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
execute at @a[scores={ability020-00=1..,ability020-01=1..,ability020-02=0,OnGround=0}] run effect give @a[distance=..5] slowness 3 2 true
scoreboard players set @a[scores={ability020-00=1..,ability020-01=1..,ability020-02=0,OnGround=0}] ability020-02 1
execute as @a[scores={ability020-00=1..,ability020-01=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s
execute as @a[scores={ability020-00=1..,ability020-01=0}] unless entity @s[scores={ability020-02=1..}] run title @s actionbar [{"text":"Jump to activate Falling Star.","color":"#CD3FFF"}]
execute as @a[scores={ability020-02=1}] run attribute @s minecraft:generic.gravity modifier add ability020_gravity -10 add_multiplied_total
execute at @a[scores={ability020-02=1}] run function ss_particles:arcane_fire_ring
execute as @a[scores={ability020-02=1}] at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 2
execute as @a[scores={ability020-02=5}] run attribute @s minecraft:generic.gravity modifier remove ability020_gravity
execute as @a[scores={ability020-02=45}] run attribute @s minecraft:generic.gravity modifier add ability020_gravity 10 add_multiplied_total
execute as @a[scores={ability020-02=45}] at @s run playsound minecraft:ui.toast.out master @a ~ ~ ~ 2
execute at @a[scores={ability020-02=1..}] run particle explosion
execute at @a[scores={ability020-02=45..}] run particle glow ~ ~-1 ~ 0.3 0.3 0.3 0.1 10 normal @a
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run particle explosion_emitter ~ ~ ~ 1 1 1 0 5
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run function ss_particles:teleport_column
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run playsound minecraft:entity.lightning_bolt.impact master @a
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run playsound minecraft:entity.generic.explode master @a
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s run playsound minecraft:entity.generic.big_fall master @a ~ ~ ~ 1 0.5
scoreboard players set @a[scores={ability020-02=1..}] ability001 300
execute as @a[scores={ability020-02=1..,ability020-03=0,OnGround=1}] run attribute @s minecraft:generic.gravity modifier remove ability020_gravity


# water score decrease
execute as @a[scores={ability020-02=1..}] at @s if block ~ ~ ~ water run scoreboard players remove @s ability020-02 3
execute as @a[scores={ability020-02=0}] run attribute @s minecraft:generic.gravity modifier remove ability020_gravity

scoreboard players set @a[scores={ability020-02=1..,OnGround=1}] ability001 61

# execute at @a[scores={ability020-02=1..,OnGround=1}] run effect give @e[type=!#ss_library:not_alive,scores={ability020-02=0},distance=..10] resistance 1 3 true
# execute at @a[scores={ability020-02=1..,OnGround=1}] at @e[type=!#ss_library:not_alive,scores={ability020-02=0},distance=..10] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1}

execute as @a[scores={ability020-02=101..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..10,dy=-3] unless entity @s[scores={ability020-02=1..}] run damage @s 30 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=91..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..9,dy=-3] unless entity @s[scores={ability020-02=1..}] run damage @s 27 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=81..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..8,dy=-2] unless entity @s[scores={ability020-02=1..}] run damage @s 24 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=71..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..7,dy=-2] unless entity @s[scores={ability020-02=1..}] run damage @s 21 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=61..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..6,dy=-1] unless entity @s[scores={ability020-02=1..}] run damage @s 18 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..5,dy=-1] unless entity @s[scores={ability020-02=1..}] run damage @s 15 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=101..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..10,dy=3] unless entity @s[scores={ability020-02=1..}] run damage @s 30 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=91..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..9,dy=3] unless entity @s[scores={ability020-02=1..}] run damage @s 27 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=81..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..8,dy=2] unless entity @s[scores={ability020-02=1..}] run damage @s 24 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=71..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..7,dy=2] unless entity @s[scores={ability020-02=1..}] run damage @s 21 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=61..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..6,dy=1] unless entity @s[scores={ability020-02=1..}] run damage @s 18 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..5,dy=1] unless entity @s[scores={ability020-02=1..}] run damage @s 15 minecraft:player_attack by @p[scores={ability020-02=1..,OnGround=1}]
execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @e[type=!#ss_library:not_alive,distance=..10,tag=UnlockedParrying] unless entity @s[scores={ability020-02=1..}] run scoreboard players set @s ParryCharges 0

execute as @a[scores={ability020-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s strength 2 1 true
execute as @a[scores={ability020-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s speed 3 1 true

title @a[scores={ability020-02=1..,OnGround=1}] actionbar [{"text":"Falling Star cooling down...","color":"#7800FF"}]
scoreboard players set @a[scores={ability020-02=1..,OnGround=1}] ability020-03 600

scoreboard players remove @a[scores={ability020-03=1..}] ability020-03 1
scoreboard players set @a[scores={ability020-03=..-1}] ability020-03 1
scoreboard players set @a[scores={ability020-03=1..}] ability020-01 -32
scoreboard players operation @a[scores={ability020-03=2..,ability020-01=..0,DamageDealt=1..}] ability020-03 -= @s DamageDealt
# execute as @a[scores={ability020-00=1..,ability020-01=-20,ability020-02=0}] if entity @s[scores={ability020-01=..-1}] run title @s actionbar [{"text":"Crouch to charge Falling Star.","color":"gold"}]
scoreboard players set @a[scores={ability020-00=1..,ability020-03=1}] ability020-00 3
execute as @a[scores={ability020-03=1}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.7
execute as @a[scores={ability020-03=1}] run title @s actionbar [{"text":"Falling Star regenerated.","color":"#7800FF"}]
scoreboard players add @a[scores={ability020-01=..-11}] ability020-01 1
execute as @a[scores={ability020-00=3,ability020-03=..1}] unless entity @s[predicate=ss_library:is_sneaking] run title @s actionbar [{"text":"Crouch to charge Falling Star.","color":"#AB60FF"}]
    # this is only a temporary fix. this title displays while crouching, not sure why, don't want to dissect my own spaghetti code to find out right now

scoreboard players add @a[scores={ability020-02=1..}] ability020-02 1
scoreboard players set @a[scores={ability020-02=..-1}] ability020-02 0
scoreboard players set @a[scores={OnGround=1}] ability020-02 0

scoreboard players remove @a[scores={ability020-00=1..}] ability020-00 1