execute as @a[scores={RestOrRespawn=1}] run scoreboard players operation @s temp = @s temp_default
scoreboard players set @a[scores={RestOrRespawn=1}] temp_modifier 0

# temperature resistance
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s heat_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s cold_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s[scores={Food=20}] heat_resistance 5
execute as @a if score @s Health >= @s BaseMaxHealth run scoreboard players add @s[scores={Food=20}] cold_resistance 5
    # fire resistance
    execute as @a if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:fire_resistance":{}}}} run \
        scoreboard players add @s heat_resistance 100

execute as @a at @s run tag @s[predicate=echoes:in_alpha_biome] remove TemperatureEligible

# setting base ambient temp
execute as @a run scoreboard players operation @s ambient_temp = @s temp_default

# if player is cold
scoreboard players remove @a[predicate=ss_lib:is/raining] ambient_temp 5
scoreboard players remove @a[predicate=ss_lib:in_rain] ambient_temp 5

    # night
    scoreboard players remove @a[scores={Dimension=1,DayTime=13000..23000}] ambient_temp 2
    scoreboard players remove @a[scores={Dimension=1,DayTime=14000..22000}] ambient_temp 2
    scoreboard players remove @a[scores={Dimension=1,DayTime=15000..21000}] ambient_temp 2
    scoreboard players remove @a[scores={Dimension=1,DayTime=16000..20000}] ambient_temp 2
    scoreboard players remove @a[scores={Dimension=1,DayTime=17000..19000}] ambient_temp 2

    # frozen
    execute as @a[scores={frozen_timer=0..99}] run scoreboard players operation @s ambient_temp -= @s frozen_timer
    execute as @a[scores={frozen_timer=100..}] run scoreboard players remove @s ambient_temp 100
    execute as @a[scores={frozen_active=0..}] unless entity @s[scores={frozen_timer=0..}] run scoreboard players remove @s ambient_temp 100
    execute as @a[scores={frozen_active=0..}] if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run scoreboard players remove @s temp_modifier 1

    # in cold biome / dimension
    scoreboard players remove @a[predicate=echoes:in_cold_biome] ambient_temp 34
    scoreboard players remove @a[predicate=echoes:in_chilly_biome] ambient_temp 19
    execute as @a[predicate=!echoes:in_cold_biome] run function echoes:fetch/dimension {s:"@s"}
    scoreboard players remove @a[scores={Dimension=3}] ambient_temp 9
    scoreboard players remove @a[scores={Dimension=4}] ambient_temp 21

    execute as @a[predicate=echoes:in_cold_biome,scores={ambient_temp=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1
    execute as @a[predicate=echoes:in_cold_biome,scores={temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s temp_modifier 1

    # in ocean
    scoreboard players remove @a[predicate=echoes:in_ocean] ambient_temp 11

    execute as @a[predicate=echoes:in_ocean,scores={ambient_temp=33..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1
    execute as @a[predicate=echoes:in_ocean,scores={temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s temp_modifier 1

    # in end
    execute as @a[scores={Dimension=3,ambient_temp=50..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1
    execute as @a[scores={Dimension=3,temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s temp_modifier 1

    # player is wet/in water
    scoreboard players remove @a[scores={wet_timer=1..}] ambient_temp 6

    execute as @a[scores={wet_timer=1..,temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1

    execute as @a unless score @s wet_timer matches 1.. run function ss_lib:fetch/in_water {s:"@s"}

    execute as @a[scores={InWater=1,temp_modifier=0..}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1

    execute as @a[scores={InWater=2,temp_modifier=0..}] \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s temp_modifier 1

# if player is warm
scoreboard players add @a[scores={incendiary_timer=1..}] ambient_temp 36
scoreboard players add @a[scores={incendiary_timer=-2}] ambient_temp 36

execute as @a[predicate=ss_lib:is/on_fire] if predicate ss_lib:random_10_percent run scoreboard players add @s temp_modifier 1

    # in arid biome
    scoreboard players add @a[predicate=ss_lib:in_arid_biome] ambient_temp 13

    execute as @a[predicate=ss_lib:in_arid_biome,scores={ambient_temp=..110}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players add @s temp_modifier 1
    execute as @a[predicate=ss_lib:in_arid_biome,scores={temp_modifier=..0}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp_modifier 1

    # in nether
    scoreboard players add @a[scores={Dimension=2}] ambient_temp 22

    execute as @a[scores={Dimension=2}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp_modifier 1
    execute as @a[scores={Dimension=2,ambient_temp=..200}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp_modifier 1

    # holding heated object
    execute as @a[predicate=ss_lib:holding/heated_object,scores={ambient_temp=..100}] \
        if predicate ss_lib:random_1_percent \
        if predicate ss_lib:random_50_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players add @s temp_modifier 1
    execute as @a[predicate=ss_lib:holding/heated_object,scores={temp_modifier=..0}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp_modifier 1
    scoreboard players add @a[predicate=ss_lib:holding/heated_object,scores={temp_modifier=..0}] ambient_temp 10

    # near campfire
    execute as @a[scores={ambient_temp=..100},tag=near_campfire] if score @s ambient_temp < @s temp_default at @s if entity @e[type=interaction,tag=campfire,tag=!soul_campfire,distance=..2] run scoreboard players add @s ambient_temp 11
    execute as @a[scores={ambient_temp=..100},tag=near_campfire] if score @s ambient_temp < @s temp_default at @s if entity @e[type=interaction,tag=campfire,tag=!soul_campfire,distance=..5] run scoreboard players add @s ambient_temp 8
    execute as @a[scores={ambient_temp=..100}] if score @s ambient_temp < @s temp_default at @s if entity @e[type=interaction,tag=campfire,tag=!soul_campfire,distance=..10] run scoreboard players add @s ambient_temp 6

    scoreboard players add @a[tag=near_campfire] cold_resistance 10

    execute as @a[scores={temp=..90}] at @s \
        if entity @e[type=interaction,tag=campfire,distance=..10] \
        if score @s temp < @s ambient_temp \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp 1
            
    execute as @a[scores={temp_modifier=..0}] at @s \
        if entity @e[type=interaction,tag=campfire,distance=..10] \
        if predicate ss_lib:random_10_percent \
        if predicate ss_lib:random_50_percent \
            run scoreboard players add @s temp_modifier 1

    # near soul campfire
    execute as @a[tag=near_campfire] if score @s ambient_temp > @s temp_default if score @s ambient_temp >= @s temp_default at @s if entity @e[type=interaction,tag=soul_campfire,distance=..2] run scoreboard players remove @s ambient_temp 6
    execute as @a[tag=near_campfire] if score @s ambient_temp > @s temp_default at @s if entity @e[type=interaction,tag=soul_campfire,distance=..5] run scoreboard players remove @s ambient_temp 5
    execute as @a if score @s ambient_temp > @s temp_default at @s if entity @e[type=interaction,tag=soul_campfire,distance=..10] run scoreboard players remove @s ambient_temp 4


    execute as @a if score @s ambient_temp >= @s temp_default at @s \
        if entity @e[type=interaction,tag=soul_campfire,distance=..10] \
        if score @s temp > @s ambient_temp \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s temp 1

# add temperature modifier
execute as @a run scoreboard players operation @s ambient_temp += @s temp_modifier

# ambient temperature caps
scoreboard players set @a[scores={ambient_temp=..-51}] ambient_temp -50
scoreboard players set @a[scores={ambient_temp=201..}] ambient_temp 200

# getting difference
execute as @a run scoreboard players operation @s temp_difference = @s ambient_temp
execute as @a run scoreboard players operation @s temp_difference -= @s temp

# resetting temperature towards default

    # resetting temperature modifier
    execute as @a[scores={temp_modifier=1..,temp_difference=-5..5}] \
        unless dimension minecraft:the_nether \
        if predicate ss_lib:random_1_percent \
            run scoreboard players remove @s temp_modifier 1

    execute as @a[scores={temp_modifier=..-1,temp_difference=-5..5}] \
        if predicate ss_lib:random_1_percent \
            run scoreboard players add @s temp_modifier 1
    
        # dangerous temperature
        execute as @a[scores={temp_modifier=1..,temp_dangerous=0}] \
            unless dimension minecraft:the_nether \
            if predicate ss_lib:random_1_percent \
                run scoreboard players remove @s temp_modifier 1

        execute as @a[scores={temp_modifier=..-1,temp_dangerous=0}] \
            if predicate ss_lib:random_1_percent \
                run scoreboard players add @s temp_modifier 1

    # drinking water
    execute as @a[scores={drink_water=1..}] \
        if score @s temp_difference <= @s heat_resistance \
        if score @s temp > @s temp_default \
            run scoreboard players remove @s temp 3

    execute as @a[scores={drink_water=1..}] \
        if score @s temp_difference <= @s heat_resistance \
        if score @s temp > @s temp_default \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp 1

    execute as @a[scores={drink_water=1..}] \
        if score @s temp_difference <= @s heat_resistance \
        if score @s temp > @s temp_default \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp 1

    execute as @a[scores={drink_water=1..,temp_modifier=1..}] \
        if score @s temp_difference <= @s heat_resistance \
        if predicate ss_lib:random_50_percent \
            run scoreboard players remove @s temp_modifier 1

    execute as @a[scores={drink_water=1..,temp_modifier=1..}] \
        unless score @s temp_difference <= @s heat_resistance \
        if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent \
            run scoreboard players remove @s temp_modifier 1

# burning/freezing effects will go here
    # execute as @a run scoreboard players operation @s body_temp_modifier = @s temp
    # execute as @a run scoreboard players operation @s body_temp_modifier -= @s temp_default
    # execute as @a run scoreboard players operation @s body_temp += @s body_temp_modifier
    # execute as @a[scores={body_temp=..-1}] run scoreboard players operation @s body_temp += @s heat_resistance

    # execute as @a[scores={body_temp=..-10000}] run scoreboard players set @s body_temp -10000
    # execute as @a[scores={body_temp=10000..}] run scoreboard players set @s body_temp 10000

# armor modifications
execute as @a unless score @s temp = @s temp_default run function ss_lib:fetch/armor {s:"@s"}

    # unarmored heat resistance
    execute as @a if score @s temp > @s temp_default run scoreboard players operation @s heat_resistance -= @s ArmorType


    # leather cold resistance
    execute as @a[scores={HelmetType=1}] if score @s temp < @s temp_default run scoreboard players add @s cold_resistance 3
    execute as @a[scores={ChestplateType=1}] if score @s temp < @s temp_default run scoreboard players add @s cold_resistance 3
    execute as @a[scores={LeggingsType=1}] if score @s temp < @s temp_default run scoreboard players add @s cold_resistance 3
    execute as @a[scores={BootsType=1}] if score @s temp < @s temp_default run scoreboard players add @s cold_resistance 3

    # thermostasis
    scoreboard players set @a generic_t 0
    execute as @a[scores={HelmetType=1..}] if items entity @s armor.head *[enchantments~[{"enchantments":"echoes:thermostasis"}]] run scoreboard players add @s generic_t 1
    execute as @a[scores={ChestplateType=1..}] if items entity @s armor.chest *[enchantments~[{"enchantments":"echoes:thermostasis"}]] run scoreboard players add @s generic_t 1
    execute as @a[scores={LeggingsType=1..}] if items entity @s armor.legs *[enchantments~[{"enchantments":"echoes:thermostasis"}]] run scoreboard players add @s generic_t 1
    execute as @a[scores={BootsType=1..}] if items entity @s armor.feet *[enchantments~[{"enchantments":"echoes:thermostasis"}]] run scoreboard players add @s generic_t 1
    execute as @a run scoreboard players operation @s generic_t *= @s 3
        execute as @a run scoreboard players operation @s cold_resistance += @s generic_t
        execute as @a run scoreboard players operation @s heat_resistance += @s generic_t

execute as @a run scoreboard players operation @s temp_dangerous = @s temp
execute as @a run scoreboard players operation @s temp_dangerous -= @s temp_default

# moving towards ambient temperature
execute as @a unless score @s temp = @s ambient_temp run scoreboard players operation @s generic_b = @s temp_difference
execute as @a[scores={generic_b=..-1}] unless score @s temp = @s ambient_temp run scoreboard players operation @s generic_b *= @s -1
execute as @a unless score @s temp = @s ambient_temp run function echoes:player/temperature/ambient

# temperature diseligibility
execute as @a[tag=!TemperatureEligible] run scoreboard players operation @s temp = @s temp_default

execute as @a[scores={temp_dangerous=..-1},gamemode=!creative,gamemode=!spectator] unless score @s temp = @s temp_default run function echoes:player/temperature/extreme_cold
execute as @a[scores={temp_dangerous=1..},gamemode=!creative,gamemode=!spectator] unless score @s temp = @s temp_default run function echoes:player/temperature/extreme_heat

# display
execute as @a[scores={display_temp=1,TimeSinceRest=1..,temp_modifier=0..,temp_dangerous=-19..19},tag=TemperatureEligible] unless score @s pause_actionbars matches -20.. unless score @s temp_dangerous matches 0 run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"temp_dangerous"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Adjustment: ",{"text":"+","color":"green"},{"score":{"name":"*","objective":"temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
execute as @a[scores={display_temp=1,TimeSinceRest=1..,temp_modifier=..-1,temp_dangerous=-19..19},tag=TemperatureEligible] unless score @s pause_actionbars matches -20.. unless score @s temp_dangerous matches 0 run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"temp_dangerous"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Adjustment: ",{"score":{"name":"*","objective":"temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
execute as @a[scores={display_temp=1,TimeSinceRest=1..,temp_modifier=0..,temp_dangerous=-19..19},tag=TemperatureEligible] unless score @s pause_actionbars matches -20.. if score @s temp_dangerous matches 0 run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Adjustment: ",{"text":"+","color":"green"},{"score":{"name":"*","objective":"temp_modifier"},"color":"green"},{"text":"°","color":"green"}]
execute as @a[scores={display_temp=1,TimeSinceRest=1..,temp_modifier=..-1,temp_dangerous=-19..19},tag=TemperatureEligible] unless score @s pause_actionbars matches -20.. if score @s temp_dangerous matches 0 run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"temp"},"color":"aqua"},{"text":"°","color":"aqua"},{"text":" | ","color":"gray"},"Temperature Adjustment: ",{"score":{"name":"*","objective":"temp_modifier"},"color":"green"},{"text":"°","color":"green"}]

# execute as @a[scores={display_temp=1},tag=!InCombat,tag=!TemperatureEligible] run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"},{"text":" | ","color":"gray"},"Personal Temperature: ",{"score":{"name":"*","objective":"temp"},"color":"aqua"},{"text":"°","color":"aqua"}]
execute as @a[scores={display_temp=1,TimeSinceRest=1..},tag=!InCombat,tag=!TemperatureEligible] unless score @s pause_actionbars matches -20.. run title @s actionbar ["Ambient Temperature: ",{"score":{"name":"*","objective":"ambient_temp"},"color":"gold"},{"text":"°","color":"gold"}]

scoreboard players set @a[scores={drink_water=1..}] drink_water 0

scoreboard players set @a display_temp 0
execute as @a if items entity @s hotbar.* *[custom_data~{thermometer:1b}] run scoreboard players set @s display_temp 1