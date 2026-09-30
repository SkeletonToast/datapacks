execute as @a[scores={RestOrRespawn=1}] run scoreboard players operation @s of_temp = @s of_temp_default
execute as @a[scores={RestOrRespawn=1}] run scoreboard players set @s of_temp_modifier 0

# temperature resistance
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s of_heat_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s of_cold_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s[scores={Food=20}] of_heat_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s[scores={Food=20}] of_cold_resistance 5
    # fire resistance
    execute as @a if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:fire_resistance":{}}}} run \
        scoreboard players add @s of_heat_resistance 100

# adding armor to ambient temp (done first so that you can halve it)
execute as @a run scoreboard players operation @s of_ambient_temp = @s ArmorType

# setting base ambient temp
execute as @a run scoreboard players operation @s of_ambient_temp += @s of_temp_default

# if player is cold
scoreboard players remove @a[predicate=ss_lib:is_raining] of_ambient_temp 5
scoreboard players remove @a[predicate=ss_lib:in_rain] of_ambient_temp 5
scoreboard players remove @a[scores={Dimension=3,DayTime=13000..23000}] of_ambient_temp 2
scoreboard players remove @a[scores={Dimension=3,DayTime=14000..22000}] of_ambient_temp 2
scoreboard players remove @a[scores={Dimension=3,DayTime=15000..21000}] of_ambient_temp 2
scoreboard players remove @a[scores={Dimension=3,DayTime=16000..20000}] of_ambient_temp 2
scoreboard players remove @a[scores={Dimension=3,DayTime=17000..19000}] of_ambient_temp 2

execute as @a[scores={frozen_timer=0..99}] run scoreboard players operation @s of_ambient_temp -= @s frozen_timer
execute as @a[scores={frozen_timer=100..}] run scoreboard players remove @s of_ambient_temp 100
execute as @a[scores={frozen_active=0..}] unless entity @s[scores={frozen_timer=0..}] run scoreboard players remove @s of_ambient_temp 100
execute as @a[scores={frozen_active=0..}] if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run scoreboard players remove @s of_temp_modifier 1

    # in cold biome
    scoreboard players remove @a[predicate=oakfall:in_cold_biome] of_ambient_temp 25

    execute as @a[predicate=oakfall:in_cold_biome,scores={of_ambient_temp=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1
    execute as @a[predicate=oakfall:in_cold_biome,scores={of_temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s of_temp_modifier 1

    # in ocean
    scoreboard players remove @a[predicate=oakfall:in_ocean] of_ambient_temp 10

    execute as @a[predicate=oakfall:in_ocean,scores={of_ambient_temp=33..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1
    execute as @a[predicate=oakfall:in_ocean,scores={of_temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s of_temp_modifier 1

    # in end
    scoreboard players remove @a[scores={Dimension=2}] of_ambient_temp 10

    execute as @a[scores={Dimension=2,of_ambient_temp=50..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1
    execute as @a[scores={Dimension=2,of_temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s of_temp_modifier 1

    # player is wet/in water
    scoreboard players remove @a[scores={wet_timer=1..}] of_ambient_temp 5

    execute as @a[scores={wet_timer=1..,of_temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1

    execute as @a[scores={InWater=1,of_temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1

    execute as @a[scores={InWater=2,of_temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s of_temp_modifier 1

# if player is warm
scoreboard players add @a[scores={incendiary_timer=1..}] of_ambient_temp 30

execute as @a[predicate=ss_lib:is_on_fire] if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run scoreboard players add @s of_temp_modifier 1

    # in arid biome
    scoreboard players add @a[predicate=oakfall:in_arid_biome] of_ambient_temp 10

    execute as @a[predicate=oakfall:in_arid_biome,scores={of_ambient_temp=..110}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players add @s of_temp_modifier 1
    execute as @a[predicate=oakfall:in_arid_biome,scores={of_temp_modifier=..0}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s of_temp_modifier 1

    # in nether
    scoreboard players add @a[scores={Dimension=1}] of_ambient_temp 20

    execute as @a[scores={Dimension=1,of_ambient_temp=..150}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s of_temp_modifier 1
    execute as @a[scores={Dimension=1,of_temp_modifier=..0}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players add @s of_temp_modifier 1

    # holding heated object
    execute as @a[predicate=ss_lib:holding_heated_object,scores={of_ambient_temp=..100}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players add @s of_temp_modifier 1
    execute as @a[predicate=ss_lib:holding_heated_object,scores={of_temp_modifier=..0}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s of_temp_modifier 1

    # near campfire
    execute as @a[scores={of_ambient_temp=..100}] at @s if entity @e[type=interaction,tag=Campfire,tag=!SoulCampfire,distance=..10] run scoreboard players add @s of_ambient_temp 4
    execute as @a[scores={of_ambient_temp=..100},tag=NearCampfire] at @s if entity @e[type=interaction,tag=Campfire,tag=!SoulCampfire,distance=..5] run scoreboard players add @s of_ambient_temp 5
    execute as @a[scores={of_ambient_temp=..100},tag=NearCampfire] at @s if entity @e[type=interaction,tag=Campfire,tag=!SoulCampfire,distance=..2] run scoreboard players add @s of_ambient_temp 6

    execute as @a[scores={of_temp=..90}] at @s \
        if entity @e[type=interaction,tag=Campfire,distance=..10] \
        if score @s of_temp < @s of_ambient_temp \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s of_temp 1

    # near soul campfire
    execute as @a[scores={of_ambient_temp=100..}] at @s if entity @e[type=interaction,tag=SoulCampfire,distance=..10] run scoreboard players remove @s of_ambient_temp 4
    execute as @a[scores={of_ambient_temp=100..},tag=NearCampfire] at @s if entity @e[type=interaction,tag=SoulCampfire,distance=..5] run scoreboard players remove @s of_ambient_temp 5
    execute as @a[scores={of_ambient_temp=100..},tag=NearCampfire] if score @s of_ambient_temp >= @s of_temp_default at @s if entity @e[type=interaction,tag=SoulCampfire,distance=..2] run scoreboard players remove @s of_ambient_temp 6

    execute as @a if score @s of_ambient_temp >= @s of_temp_default at @s \
        if entity @e[type=interaction,tag=SoulCampfire,distance=..10] \
        if score @s of_temp > @s of_ambient_temp \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s of_temp 1

# add temperature modifier
execute as @a run scoreboard players operation @s of_ambient_temp += @s of_temp_modifier

# ambient temperature caps
scoreboard players set @a[scores={of_ambient_temp=..-51}] of_ambient_temp -50
scoreboard players set @a[scores={of_ambient_temp=150..}] of_ambient_temp 150

# getting difference
execute as @a run scoreboard players operation @s of_temp_difference = @s of_ambient_temp
execute as @a run scoreboard players operation @s of_temp_difference -= @s of_temp

# resetting temperature towards default

    # resetting temperature modifier
    execute as @a[scores={of_temp_modifier=1..,of_temp_difference=-5..5}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s of_temp_modifier 1

    execute as @a[scores={of_temp_modifier=..-1,of_temp_difference=-5..5}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s of_temp_modifier 1

    # drinking water
    execute as @a[scores={of_drink_water=1..}] \
        if score @s of_temp_difference <= @s of_heat_resistance \
        if score @s of_temp > @s of_temp_default \
            run scoreboard players remove @s of_temp 3

    execute as @a[scores={of_drink_water=1..}] \
        if score @s of_temp_difference <= @s of_heat_resistance \
        if score @s of_temp > @s of_temp_default \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp 1

    execute as @a[scores={of_drink_water=1..}] \
        if score @s of_temp_difference <= @s of_heat_resistance \
        if score @s of_temp > @s of_temp_default \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp 1

    execute as @a[scores={of_drink_water=1..,of_temp_modifier=1..}] \
        if score @s of_temp_difference <= @s of_heat_resistance \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s of_temp_modifier 1

    execute as @a[scores={of_drink_water=1..,of_temp_modifier=1..}] \
        unless score @s of_temp_difference <= @s of_heat_resistance \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s of_temp_modifier 1

# burning/freezing effects will go here
    # execute as @a run scoreboard players operation @s of_body_temp_modifier = @s of_temp
    # execute as @a run scoreboard players operation @s of_body_temp_modifier -= @s of_temp_default
    # execute as @a run scoreboard players operation @s of_body_temp += @s of_body_temp_modifier
    # execute as @a[scores={of_body_temp=..-1}] run scoreboard players operation @s of_body_temp += @s of_heat_resistance

    # execute as @a[scores={of_body_temp=..-10000}] run scoreboard players set @s of_body_temp -10000
    # execute as @a[scores={of_body_temp=10000..}] run scoreboard players set @s of_body_temp 10000

execute as @a run scoreboard players operation @s generic_a = @s of_temp
execute as @a run scoreboard players operation @s generic_a -= @s of_temp_default
execute as @a[scores={generic_a=..-1}] unless score @s of_temp = @s of_temp_default run function oakfall:temperature_extreme_cold
execute as @a[scores={generic_a=1..}] unless score @s of_temp = @s of_temp_default run function oakfall:temperature_extreme_heat

# moving towards ambient temperature
execute as @a unless score @s of_temp = @s of_ambient_temp run scoreboard players operation @s generic_a = @s of_temp_difference
execute as @a[scores={generic_a=..-1}] unless score @s of_temp = @s of_ambient_temp run scoreboard players operation @s generic_a *= @s -1
execute as @a unless score @s of_temp = @s of_ambient_temp run function oakfall:temperature_ambient

# display
execute as @a[scores={of_display_temp=1,of_temp_modifier=1..}] run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"of_ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"of_temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Penalty: ",{"text":"+","color":"green"},{"score":{"name":"*","objective":"of_temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
execute as @a[scores={of_display_temp=1,of_temp_modifier=..0}] run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"of_ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"of_temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Penalty: ",{"score":{"name":"*","objective":"of_temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
    # execute as @a[scores={of_display_temp=1,of_temp_modifier=1..}] run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"of_ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"of_temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":"/","color":"white"},{"score":{"name":"*","objective":"of_temp_default"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Penalty: ",{"text":"+","color":"green"},{"score":{"name":"*","objective":"of_temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
    # execute as @a[scores={of_display_temp=1,of_temp_modifier=..0}] run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"of_ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"of_temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":"/","color":"white"},{"score":{"name":"*","objective":"of_temp_default"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Penalty: ",{"score":{"name":"*","objective":"of_temp_modifier"},"color":"green"},{"text":"°","color":"green"}]

# score resets
scoreboard players set @a of_temp_default 65
scoreboard players set @a of_heat_resistance 30
scoreboard players set @a of_cold_resistance 20

scoreboard players set @a[scores={of_drink_water=1..}] of_drink_water 0