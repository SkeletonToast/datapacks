# generic_a
    # used to calculate addition to species025-03
    # used to calculate addition to species025-07

scoreboard players set @a[scores={species=025}] ability001 1

# wing giving
scoreboard players set @a[tag=SepheroshWingsEligible,scores={species=025,species025-05=..3}] trait002 1
scoreboard players set @a[tag=SepheroshWingsEligible,scores={species=025,species025-05=4..7}] trait002 2
scoreboard players set @a[tag=SepheroshWingsEligible,scores={species=025,species025-05=8..11}] trait002 3
scoreboard players set @a[tag=SepheroshWingsEligible,scores={species=025,species025-05=12..}] trait002 4
scoreboard players set @a[scores={species=025},predicate=ss_library:is_sneaking] ability002 1

tellraw @a[scores={species=025},tag=!SepheroshWingsEligible,level=10..] {"color":"dark_green","text":"Your Sepherosh wings have grown in."}
tellraw @a[scores={species=025},tag=!SepheroshWingsEligible,level=10..] {"color":"gray","italic":true,"text":"+Sleep or respawn to gain your Wings as an item."}
execute as @a[scores={species=025},tag=!SepheroshWingsEligible,level=10..] at @s run playsound entity.player.levelup player @s
scoreboard players add @a[scores={species=025},tag=!SepheroshWingsEligible,level=10..] species025-05 1
tag @a[scores={species=025},tag=!SepheroshWingsEligible,level=10..] add SepheroshWingsEligible

# slipstream
execute as @a[scores={species=025,FallFlying=1,species025-05=3..,species025-02=1..}] unless entity @s[scores={species025-03=1..}] run title @s actionbar [{"text":"✧ Caught Slipstream ✧","color":"#ffffff"}]
    # 4-20 boosts
    scoreboard players set @a[scores={species=025,FallFlying=1,species025-05=3..20,species025-02=1..}] species025-03 30
    scoreboard players operation @a[scores={species=025,FallFlying=1,species025-05=3..20,species025-02=1..}] species025-03 -= @s species025-05
    scoreboard players operation @a[scores={species=025,FallFlying=1,species025-05=3..20,species025-02=1..}] species025-03 *= @s 10
    # 21-30 boosts
    scoreboard players set @a[scores={species=025,FallFlying=1,species025-05=21..30,species025-02=1..}] species025-03 100
    # 31+ boosts
    scoreboard players operation @a[scores={species=025,FallFlying=1,species025-05=31..,species025-02=1..}] species025-03 += @s species025-05
    scoreboard players remove @a[scores={species=025,FallFlying=1,species025-05=31..,species025-02=1..}] species025-03 20
    scoreboard players operation @a[scores={species=025,FallFlying=1,species025-05=31..,species025-02=1..}] species025-03 *= @s 10
    # gliding increase
    scoreboard players add @a[scores={species=025,species025-05=10..},predicate=ss_species:flying_very_quickly] species025-03 2
    # cap
    scoreboard players set @a[scores={species=025,FallFlying=1,species025-03=601..}] species025-03 600

execute as @a[scores={species=025}] run attribute @s minecraft:generic.gravity modifier remove species025_flight_gravity

    # looking down
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..07},x_rotation=..100] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.75 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..07},x_rotation=..118] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.50 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..07},x_rotation=..128] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.35 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..07},x_rotation=..154] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.20 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..07},x_rotation=..172] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.10 add_multiplied_base

    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..11},x_rotation=..100] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.50 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..11},x_rotation=..118] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.00 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..11},x_rotation=..136] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.70 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..11},x_rotation=..154] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.40 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..11},x_rotation=..172] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.20 add_multiplied_base
    
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..19},x_rotation=..100] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 2.25 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..19},x_rotation=..118] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.50 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..19},x_rotation=..136] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.05 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..19},x_rotation=..154] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.60 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..19},x_rotation=..172] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.30 add_multiplied_base
    
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=..100] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 3.00 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=..118] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 2.00 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=..136] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.40 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=..154] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.80 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=..172] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.40 add_multiplied_base
    
    # execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=30..},x_rotation=..100] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 3.75 add_multiplied_base
    # execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=30..},x_rotation=..118] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 2.50 add_multiplied_base
    # execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=30..},x_rotation=..136] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.75 add_multiplied_base
    # execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=30..},x_rotation=..154] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 1.00 add_multiplied_base
    # execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=30..},x_rotation=..172] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.50 add_multiplied_base
    
    execute as @a[scores={species=025,FallFlying=1},x_rotation=..090] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.5 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1},x_rotation=..110] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.4 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1},x_rotation=..130] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.3 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1},x_rotation=..150] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.2 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1},x_rotation=..170] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity 0.1 add_multiplied_base

    # looking up
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=20..},x_rotation=250..] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity -0.04 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=12..},x_rotation=230..] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity -0.03 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=08..},x_rotation=210..] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity -0.02 add_multiplied_base
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..},x_rotation=190..] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity -0.01 add_multiplied_base

    # neutral
    execute as @a[scores={species=025,FallFlying=1,species025-03=1..,species025-01=-200..,species025-05=04..},x_rotation=180..] run attribute @s minecraft:generic.gravity modifier add species025_flight_gravity -0.5 add_multiplied_base

# particles
execute as @a[scores={species=025,FallFlying=1,species025-02=1..}] at @s anchored eyes run particle gust_emitter_small ^ ^ ^1
execute as @a[scores={species=025,species025-03=1..},predicate=ss_library:flying_quickly] at @s anchored feet run particle small_gust ^1.5 ^0.5 ^2.5 0 0 0 0 1 normal @a[distance=0.1..]
execute as @a[scores={species=025,species025-03=1..},predicate=ss_library:flying_quickly] at @s anchored feet run particle small_gust ^-1.5 ^0.5 ^2.5 0 0 0 0 1 normal @a[distance=0.1..]
    # maybe fix these so they match folded wings when diving
execute as @a[scores={species=025,species025-03=1..},predicate=ss_library:flying_quickly] at @s anchored eyes run particle small_gust ^ ^ ^10 10 10 10 0 3 normal @s
execute as @a[scores={species=025,species025-03=1..},predicate=ss_library:flying_quickly] at @s anchored eyes run particle white_ash ^ ^ ^10 10 10 10 0 3 normal @s
execute at @s[scores={species=025,FallFlying=1,species025-03=1..},predicate=ss_species:flying_very_quickly] anchored eyes run particle gust ^ ^ ^20 40 40 40 0 1 normal @s

execute as @a[scores={species=025,FallFlying=1},predicate=ss_library:flying_quickly] at @s anchored eyes run particle white_ash ^ ^ ^5 6 6 6 0 2 normal @s
execute as @a[scores={species=025},predicate=ss_library:flying_quickly] at @s anchored eyes run particle small_gust ^ ^ ^10 10 10 10 0 2 normal @s

# boosting
execute as @a[scores={species=025}] run function ss_species:s_025f_boost_timer

    # execute as @a[scores={species=025,FallFlying=1}] unless entity @s[scores={species025-01=..-1}] run scoreboard players add @s species025-01 1
execute as @a[scores={species=025,species025-01=1..}] if score @s species025-04 >= @s species025-05 run scoreboard players set @s species025-01 0
scoreboard players set @a[scores={species=025,FallFlying=1,species025-01=1}] generic_c 0
execute as @a[scores={species=025,FallFlying=1,species025-01=1}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run function ss_species:s_025f_give_boost
execute as @a[scores={species=025,FallFlying=1,species025-01=1}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run function ss_species:s_025f_item_replace_boost

    # visual effects
    scoreboard players set @a[scores={species=025,FallFlying=1,species025-02=1..}] species025-08 60
    scoreboard players set @a[scores={species=025,FallFlying=1,species025-05=3..,species025-08=1..,species025-03=0}] species025-08 0
        execute as @a[scores={species=025,FallFlying=1,species025-05=3..,species025-08=1..,species025-03=0}] run attribute @s generic.movement_speed modifier remove species025_boost_visual_speed

    # absurd ridiculous boosting that should not exist (save this for a relic called Jet Engine)
        # execute as @a[scores={species=025,FallFlying=1,ability018-02=1..}] at @s anchored feet run summon creeper ^ ^ ^-3 {ExplosionRadius:-2,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
        # execute as @a[scores={species=025,FallFlying=1,ability018-02=1..}] at @s anchored feet positioned ^ ^ ^-1 run function ss_particles:huge_fireburst

scoreboard players set @a[scores={species=025,FallFlying=0,species025-01=0..}] species025-01 0
execute as @a[scores={species=025,FallFlying=1}] store result score @s species025-04 run clear @s firework_rocket[custom_data={Tags:["species025"]}] 0
scoreboard players operation @a[scores={species=025,FallFlying=0,species025-04=1..}] species025-04_01 = @s species025-04
scoreboard players set @a[scores={species=025,species025-04_01=21..}] species025-04_01 20
execute as @a[scores={species=025,species025-04_01=1..}] if score @s species025-04_01 > @s species025-05 run scoreboard players operation @s species025-04_01 = @s species025-05
clear @a[scores={species=025,FallFlying=0}] firework_rocket[custom_data={Tags:["species025"]}]

    # penalties
    # clear @a[scores={species=025,FallFlying=1,DamageResisted=10..}] firework_rocket[custom_data={Tags:["species025"]}] 1
    # clear @a[scores={species=025,FallFlying=1,DamageTaken=10..}] firework_rocket[custom_data={Tags:["species025"]}] 1

execute as @a[scores={species=025},predicate=ss_species:holding_seeds_mainhand] run item modify entity @s weapon.mainhand ss_species:edible_seeds
execute as @a[scores={species=025},predicate=ss_species:holding_seeds_offhand] run item modify entity @s weapon.offhand ss_species:edible_seeds

# boost increasing
    # maybe change this so that its just calculated once when you increase the boost level

execute as @a[scores={species=025,FallFlying=1}] run function ss_species:s_025f_boost_amount_increase
execute as @a[scores={species=025,FallFlying=1,trait003=1..}] run function ss_species:s_025f_boost_amount_increase

execute as @a[scores={species=025,FallFlying=1}] if score @s species025-06 >= @s species025-07 run function ss_species:s_025f_flight_level_increase
# midair attacks
execute as @a[scores={species=025,FallFlying=1,species025-05=10..}] run attribute @s minecraft:player.entity_interaction_range modifier remove species025_midair_entity_interaction_range

execute as @a[scores={species=025,FallFlying=1,species025-05=10..}] unless entity @s[predicate=ss_species:flying_very_quickly] run attribute @s player.entity_interaction_range modifier add species025_midair_entity_interaction_range 4 add_multiplied_base
execute as @a[scores={species=025,FallFlying=1,species025-05=10..}] unless entity @s[predicate=ss_species:flying_very_quickly] run function ss_statuses:hesitant {"multiplier":"0.9"}
execute as @a[scores={species=025,FallFlying=1,species025-05=20..},predicate=ss_species:flying_very_quickly] run attribute @s player.entity_interaction_range modifier add species025_midair_entity_interaction_range 2 add_multiplied_base
execute as @a[scores={species=025,FallFlying=1,species025-05=20..,species025-03=1..},predicate=ss_species:flying_very_quickly] run function ss_statuses:aggressive {"multiplier":"2"}
execute as @a[scores={species=025,FallFlying=1,species025-05=20..},predicate=ss_species:flying_very_quickly] unless entity @s[scores={species025-03=1..}] run function ss_statuses:aggressive {"multiplier":"4"}

execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=10..}] at @s anchored eyes positioned ^ ^ ^3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^ ^ ^3 run function ss_particles:huge_fireburst
execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^1 ^ ^-3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^ ^1 ^-3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^-1 ^ ^-3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^ ^-1 ^-3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
# execute as @a[scores={species=025,species025-05=..5,FallFlying=1,DamageDealt=1..,species025-04=1..}] at @s anchored eyes positioned ^ ^ ^3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge","cost":"1"}
# execute as @a[scores={species=025,species025-05=6..10,FallFlying=1,DamageDealt=1..,species025-04=2..}] at @s anchored eyes positioned ^ ^ ^3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge","cost":"2"}
# execute as @a[scores={species=025,species025-05=11..,FallFlying=1,DamageDealt=1..,species025-04=3..}] at @s anchored eyes positioned ^ ^ ^3 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge","cost":"3"}

# just for funsies
    # execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,ItemSelected=0}] at @s anchored eyes positioned ^ ^ ^5 run function ss_species:s_025f_midair_attack_1 {"projectile":"fireball"}

    # execute as @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] at @s anchored eyes positioned ^ ^ ^-3 run summon creeper ~ ~ ~ {ExplosionRadius:-2,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
    # effect give @a[scores={species=025,FallFlying=1,DamageDealt=1..,species025-05=20..},predicate=ss_species:flying_very_quickly] minecraft:resistance 1 4 true

    # execute as @a[scores={species=025,FallFlying=1,species025-05=15..,species025-03=1..,species025-02=1..}] at @s anchored eyes positioned ^ ^ ^10 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
    # execute as @a[scores={species=025,FallFlying=1,species025-05=15..,species025-03=1..,species025-02=1..}] at @s anchored eyes positioned ^1 ^ ^10 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
    # execute as @a[scores={species=025,FallFlying=1,species025-05=15..,species025-03=1..,species025-02=1..}] at @s anchored eyes positioned ^ ^1 ^10 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
    # execute as @a[scores={species=025,FallFlying=1,species025-05=15..,species025-03=1..,species025-02=1..}] at @s anchored eyes positioned ^-1 ^ ^10 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}
    # execute as @a[scores={species=025,FallFlying=1,species025-05=15..,species025-03=1..,species025-02=1..}] at @s anchored eyes positioned ^ ^-1 ^10 run function ss_species:s_025f_midair_attack_1 {"projectile":"wind_charge"}

# resistance
effect give @a[scores={species=025,FallFlying=1,species025-03=1..,species025-05=04..07}] minecraft:resistance 1 0 true

effect give @a[scores={species=025,FallFlying=1,species025-05=08..11}] minecraft:resistance 1 0 true
effect give @a[scores={species=025,FallFlying=1,species025-03=20..,species025-05=08..11}] minecraft:resistance 1 1 true

effect give @a[scores={species=025,FallFlying=1,species025-05=12..19}] minecraft:resistance 1 1 true
effect give @a[scores={species=025,FallFlying=1,species025-03=20..,species025-05=12..19}] minecraft:resistance 1 2 true

effect give @a[scores={species=025,FallFlying=1,species025-05=20..29}] minecraft:resistance 1 2 true
effect give @a[scores={species=025,FallFlying=1,species025-03=20..,species025-05=20..29}] minecraft:resistance 1 3 true

effect give @a[scores={species=025,FallFlying=1,species025-05=30..}] minecraft:resistance 1 3 true
execute as @a[scores={species=025,FallFlying=1,species025-03=20..,species025-05=30..}] run function ss_statuses:fortified {"multiplier":"0.5"}

# slipstream timer decrease
scoreboard players set @a[scores={species=025,species025-03=1..,DamageTaken=1..}] species025-03 1
scoreboard players set @a[scores={species=025,species025-03=1..,DamageResisted=1..}] species025-03 1
scoreboard players remove @a[scores={species=025,species025-05=..9,species025-03=11..,trait002-01=1..}] species025-03 10
title @a[scores={species=025,FallFlying=1,species025-03=1}] actionbar [{"text":"- Slipstream Lost -","color":"#999999"}]
scoreboard players remove @a[scores={species=025,species025-03=1..}] species025-03 1
scoreboard players set @a[scores={species=025,FallFlying=0}] species025-03 0