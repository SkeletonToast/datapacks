function echoes:player/temperature/temperature

function echoes:player/encumbrance/_main

scoreboard players enable @a aegis_base_color
function echoes:player/aegis

function echoes:player/healing_items

function echoes:player/xp_level/_main

function echoes:player/elytra_scaling/_main
execute as @a[scores={boost_visual_effects=0..}] run function echoes:player/elytra_scaling/boost_visuals
clear @a[scores={OnGround=1}] firework_rocket[custom_data~{elytra_boost:true}]

execute as @a[scores={SoftRestOrRespawn=1}] run function echoes:player/grant_recipes

# execute as @a run function echoes:player/ambient_particles

function echoes:player/aegis_display

effect give @a[scores={used_glow_berries=1..}] glowing 10 0 true
scoreboard players set @a used_glow_berries 0

# sleeping stuff
execute as @a[scores={TimeSinceRest=0}] run function echoes:player/sleeping
execute if entity @a[scores={TimeSinceDeath=1..}] if entity @a[scores={DayTime=12010..23991}] unless entity @a[scores={TimeSinceRest=1..}] if entity @a[scores={SleepingTime=99..}] run function echoes:player/skip_night
    # this might fix the thunderstorm thing? this just means that you won't be able to skip the night if it's thundering and NOT nighttime.
execute as @r[scores={DayTime=0}] run scoreboard players add $Day Day 1

execute as @a[scores={DayTime=23000,Dimension=1}] run function echoes:player/dawn

execute as @a[scores={DayTime=13000,Dimension=1}] run function echoes:player/dusk

execute as @a run function echoes:player/renown

execute as @a run function echoes:player/feats

# function echoes:player/movement/glide