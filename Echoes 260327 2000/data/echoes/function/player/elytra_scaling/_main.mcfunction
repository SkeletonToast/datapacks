function ss_lib:fetch/fall_flying {"s":"@a[scores={flight_level=1..}]"}

execute as @a[scores={flight_level=1..}] if items entity @s armor.chest elytra run tag @s add WearingElytra

# flight level calculation
    execute as @a[scores={Mind=17..}] run scoreboard players operation @s flight_level = @s Mind
    execute as @a[scores={Mind=17..}] run scoreboard players remove @s flight_level 16
    scoreboard players set @a[scores={Mind=..16}] flight_level 0

# slipstream
execute as @a[scores={flight_level=4..,FallFlying=1,flight_level=3..,used_firework_rocket=1..}] unless entity @s[scores={slipstream=1..}] run function echoes:player/elytra_scaling/caught_slipstream_title
    # flight level 4-20
    scoreboard players set @a[scores={flight_level=4..,FallFlying=1,flight_level=3..20,used_firework_rocket=1..}] slipstream 30
    execute as @a run scoreboard players operation @s[scores={FallFlying=1,flight_level=3..20,used_firework_rocket=1..}] slipstream -= @s flight_level
    execute as @a run scoreboard players operation @s[scores={FallFlying=1,flight_level=3..20,used_firework_rocket=1..}] slipstream *= @s 10
    # flight level 21-30
    scoreboard players set @a[scores={flight_level=4..,FallFlying=1,flight_level=21..30,used_firework_rocket=1..}] slipstream 100
    # flight level 31+
    execute as @a run scoreboard players operation @s[scores={FallFlying=1,flight_level=31..,used_firework_rocket=1..}] slipstream += @s flight_level
    scoreboard players remove @a[scores={flight_level=4..,FallFlying=1,flight_level=31..,used_firework_rocket=1..}] slipstream 20
    execute as @a run scoreboard players operation @s[scores={FallFlying=1,flight_level=31..,used_firework_rocket=1..}] slipstream *= @s 10
    # gliding increase
    scoreboard players add @a[scores={flight_level=4..,flight_level=10..},predicate=echoes:flying_very_quickly] slipstream 2
    # cap
    scoreboard players set @a[scores={flight_level=4..,FallFlying=1,slipstream=601..}] slipstream 600

execute as @a[scores={flight_level=1..}] run attribute @s minecraft:gravity modifier remove mind.elytra_gravity

# gravity

    # calculation / air brakes
    execute as @a if predicate ss_lib:input/sneak run scoreboard players add @s air_brake_time 1
    execute as @a[scores={air_brake_time=1..}] unless predicate ss_lib:input/sneak run scoreboard players remove @s air_brake_time 5
        scoreboard players set @a[scores={air_brake_time=..-1}] air_brake_time 0
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..}] run scoreboard players operation @s generic_a = @s flight_level
            execute as @a if score @s air_brake_time > @s generic_a run scoreboard players operation @s air_brake_time = @s generic_a
        execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..}] if predicate ss_lib:input/sneak run \
            scoreboard players operation @s generic_a -= @s air_brake_time
    execute as @a[scores={air_brake_time=1..}] at @s anchored eyes positioned ^ ^ ^1 run particle small_gust ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    scoreboard players set @a[scores={used_firework_rocket=1..}] air_brake_time 0

    # neutral
    execute as @a[scores={flight_level=4..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=180..] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -0.5 add_multiplied_total
    # execute as @a[scores={flight_level=8..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..,generic_a=0},predicate=ss_lib:input/sneak,x_rotation=..190] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -1 add_multiplied_total

    # looking down
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..100,tag=WearingElytra] run function echoes:player/elytra_scaling/looking_down_1
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=101..118] run function echoes:player/elytra_scaling/looking_down_2
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=119..136] run function echoes:player/elytra_scaling/looking_down_3
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=137..154] run function echoes:player/elytra_scaling/looking_down_4
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=155..172] run function echoes:player/elytra_scaling/looking_down_5

    scoreboard players set @a[scores={generic_a=251..}] generic_a 250
    execute as @a[scores={flight_level=1..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},predicate=!ss_lib:input/sneak] run function parse:score {"score":"generic_a","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/elytra_scaling/apply_gravity"}

    # looking up
    execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..,flight_level=20..},x_rotation=250..] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -0.04 add_multiplied_base
    execute as @a[scores={flight_level=24..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..,flight_level=12..},x_rotation=230..] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -0.03 add_multiplied_base
    execute as @a[scores={flight_level=14..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..,flight_level=08..},x_rotation=210..] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -0.02 add_multiplied_base
    execute as @a[scores={flight_level=4..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..,flight_level=04..},x_rotation=190..] run attribute @s minecraft:gravity modifier add mind.elytra_gravity -0.01 add_multiplied_base

# particles
execute as @a[scores={flight_level=4..,FallFlying=1,used_firework_rocket=1..}] at @s anchored eyes run particle gust_emitter_small ^ ^ ^1
execute as @a[scores={FallFlying=1,Dimension=..1}] run function echoes:player/elytra_scaling/visual_particles {"particle_0":"white_ash","particle_1":"small_gust","particle_2":"gust"}
execute as @a[scores={FallFlying=1,Dimension=2}] run function echoes:player/elytra_scaling/visual_particles {"particle_0":"ash","particle_1":"small_flame","particle_2":"lava"}
execute as @a[scores={FallFlying=1,Dimension=3}] run function echoes:player/elytra_scaling/visual_particles {"particle_0":"white_ash","particle_1":"reverse_portal","particle_2":"dragon_breath"}

# boosting
execute as @a[scores={flight_level=4..}] run function echoes:player/elytra_scaling/boost_timer

    execute as @a[scores={flight_level=4..,FallFlying=1}] unless entity @s[scores={elytra_boost_cooldown=..-1}] run scoreboard players add @s elytra_boost_cooldown 1
scoreboard players set @a[scores={flight_level=4..,elytra_boost_cooldown=1..,used_firework_rocket=1..}] elytra_boost_cooldown 2
execute as @a[scores={flight_level=4..,elytra_boost_cooldown=1..,flight_level=..19}] if score @s boosts_in_inventory >= @s flight_level run scoreboard players set @s elytra_boost_cooldown 2
execute as @a[scores={flight_level=4..,elytra_boost_cooldown=1..,flight_level=20..,boosts_in_inventory=20..}] run scoreboard players set @s elytra_boost_cooldown 2

    # visual effects
    scoreboard players set @a[scores={flight_level=4..,FallFlying=1,used_firework_rocket=1..}] boost_visual_effects 60
    scoreboard players set @a[scores={flight_level=4..,FallFlying=1,flight_level=3..,boost_visual_effects=1..,slipstream=0}] boost_visual_effects 0
        execute as @a[scores={flight_level=4..,FallFlying=1,flight_level=3..,boost_visual_effects=1..,slipstream=0}] run attribute @s movement_speed modifier remove elytra_boost_boost_visual_speed

scoreboard players set @a[scores={flight_level=4..,FallFlying=0,elytra_boost_cooldown=0..}] elytra_boost_cooldown 0
# execute as @a[scores={flight_level=4..,FallFlying=1}] store result score @s boosts_in_inventory run clear @s firework_rocket[custom_data~{elytra_boost:true}] 0
# execute as @a run scoreboard players operation @s[scores={FallFlying=0,boosts_in_inventory=1..}] boosts_stored = @s boosts_in_inventory
scoreboard players set @a[scores={flight_level=4..,boosts_stored=11..}] boosts_stored 10
execute as @a[scores={flight_level=4..,boosts_stored=1..}] if score @s boosts_stored > @s flight_level run scoreboard players operation @s boosts_stored = @s flight_level

# this was changed so that it doesn't give two boosts, so boosts r just capped at one
    # function ss_lib:fetch/item_selected {"s":"@a[scores={flight_level=4..,FallFlying=1,elytra_boost_cooldown=1}]"}
    # execute as @a[scores={flight_level=4..,FallFlying=1,elytra_boost_cooldown=1,boosts_in_inventory=0,ItemOffhand=0}] run function echoes:player/elytra_scaling/item_replace_boost
    # execute as @a[scores={flight_level=4..,FallFlying=1,elytra_boost_cooldown=1,boosts_in_inventory=0,ItemOffhand=1}] run function echoes:player/elytra_scaling/give_boost

    execute if score $elytraBoosting true matches 1 as @a[scores={flight_level=10..,FallFlying=1,boost_fuel=1..}] run tag @s[predicate=!ss_lib:input/sprint] remove elytra_sprint_boosting
    execute if score $elytraBoosting true matches 1 as @a[scores={flight_level=10..,FallFlying=1,boost_fuel=1..},level=1..,predicate=ss_lib:input/sprint] run \
        function echoes:player/elytra_scaling/sprint_boost
    execute as @a run scoreboard players operation @s generic_f = @s Mind
    execute as @a run scoreboard players operation @s generic_f *= @s 3
    execute as @a[scores={OnGround=1}] run scoreboard players operation @s generic_f *= @s 2
        execute as @a[scores={OnGround=1,boost_fuel=301..}] run scoreboard players set @s boost_fuel 300
    execute as @a if score @s boost_fuel > @s generic_f run scoreboard players remove @s boost_fuel 1
    execute as @a[scores={flight_level=10..,FallFlying=1},predicate=!ss_lib:input/sprint] run scoreboard players add @s boost_fuel 1
    execute as @a[scores={flight_level=10..,OnGround=1}] run scoreboard players add @s boost_fuel 1

    execute if score $elytraBoosting true matches 1 as @a[scores={FallFlying=1,flight_level=10..,boost_fuel=1..},gamemode=!spectator,gamemode=!creative] if score @s boost_fuel <= @s generic_f run function ss_lib:actionbar {"title":"\"Boost: \",{\"score\":{\"name\":\"*\",\"objective\":\"boost_fuel\"},\"color\":\"aqua\"},{\"text\":\"/\",\"color\":\"white\"},{\"score\":{\"name\":\"*\",\"objective\":\"generic_f\"},\"color\":\"aqua\"}","duration":1}
    execute if score $elytraBoosting true matches 1 as @a[scores={FallFlying=1,flight_level=10..,boost_fuel=..0},gamemode=!spectator,gamemode=!creative] if score @s boost_fuel <= @s generic_f run function ss_lib:actionbar {"title":"\"Boost: \",{\"text\":\"0\",\"color\":\"red\"},{\"text\":\"/\",\"color\":\"white\"},{\"score\":{\"name\":\"*\",\"objective\":\"generic_f\"},\"color\":\"aqua\"}","duration":1}
    # execute as @a[scores={FallFlying=1}] unless score @s boost_fuel = @s generic_f run title @s actionbar ["Boost: ",{"score":{"name":"*","objective":"boost_fuel"},"color":"yellow"},{"text":"/","color":"white"},{"score":{"name":"*","objective":"generic_f"},"color":"yellow"}]
    # execute as @a[scores={FallFlying=1}] unless score @s boost_fuel = @s generic_f run scoreboard players set @s pause_actionbars 5

# resistance
effect give @a[scores={flight_level=4..,FallFlying=1,slipstream=20..,flight_level=08..11}] minecraft:resistance 1 0 true

effect give @a[scores={flight_level=4..,FallFlying=1,flight_level=12..19}] minecraft:resistance 1 0 true
effect give @a[scores={flight_level=4..,FallFlying=1,slipstream=20..,flight_level=12..19}] minecraft:resistance 1 1 true

effect give @a[scores={flight_level=4..,FallFlying=1,flight_level=20..29}] minecraft:resistance 1 1 true
effect give @a[scores={flight_level=4..,FallFlying=1,slipstream=20..,flight_level=20..29}] minecraft:resistance 1 2 true

effect give @a[scores={flight_level=4..,FallFlying=1,flight_level=30..}] minecraft:resistance 1 2 true
# effect give @a[scores={flight_level=4..,FallFlying=1,slipstream=20..,flight_level=30..}] minecraft:resistance 1 3 true

# slipstream timer decrease
scoreboard players set @a[scores={flight_level=4..,slipstream=1..,DamageTaken=1..}] slipstream 1
scoreboard players set @a[scores={flight_level=4..,slipstream=1..,DamageResisted=1..}] slipstream 1
# scoreboard players remove @a[scores={flight_level=4..,flight_level=..9,slipstream=11..,trait002-01=1..}] slipstream 10
execute as @a[scores={flight_level=4..,FallFlying=1,slipstream=1}] run function ss_lib:actionbar {"title":"{\"text\":\"- Slipstream Lost -\",\"color\":\"#999999\"}","duration":3}
scoreboard players remove @a[scores={flight_level=4..,slipstream=1..}] slipstream 1
scoreboard players set @a[scores={flight_level=4..,FallFlying=0}] slipstream 0

# water flyby effects

# old
    # execute as @a[scores={flight_level=04..07,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..100] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.75 add_multiplied_base
    # execute as @a[scores={flight_level=04..07,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..118] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.50 add_multiplied_base
    # execute as @a[scores={flight_level=04..07,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..136] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.35 add_multiplied_base
    # execute as @a[scores={flight_level=04..07,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..154] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.20 add_multiplied_base
    # execute as @a[scores={flight_level=04..07,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..172] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.10 add_multiplied_base

    # execute as @a[scores={flight_level=08..11,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..100] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 1.50 add_multiplied_base
    # execute as @a[scores={flight_level=08..11,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..118] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 1.00 add_multiplied_base
    # execute as @a[scores={flight_level=08..11,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..136] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.70 add_multiplied_base
    # execute as @a[scores={flight_level=08..11,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..154] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.40 add_multiplied_base
    # execute as @a[scores={flight_level=08..11,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..172] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.20 add_multiplied_base

    # execute as @a[scores={flight_level=12..19,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..100,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 2.25 add_multiplied_base
    # execute as @a[scores={flight_level=12..19,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..118,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 1.50 add_multiplied_base
    # execute as @a[scores={flight_level=12..19,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..136,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 1.05 add_multiplied_base
    # execute as @a[scores={flight_level=12..19,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..154,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.60 add_multiplied_base
    # execute as @a[scores={flight_level=12..19,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..172,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.30 add_multiplied_base

    # execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..100,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 3.00 add_multiplied_base
    # execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..118,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 2.00 add_multiplied_base
    # execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..136,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 1.40 add_multiplied_base
    # execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..154,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.80 add_multiplied_base
    # execute as @a[scores={flight_level=34..,FallFlying=1,slipstream=1..,elytra_boost_cooldown=-200..},x_rotation=..172,tag=WearingElytra] run attribute @s minecraft:gravity modifier add mind.elytra_gravity 0.40 add_multiplied_base