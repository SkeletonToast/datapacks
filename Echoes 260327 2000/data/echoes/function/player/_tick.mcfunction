function echoes:player/temperature/_main

function echoes:player/encumbrance/_main

scoreboard players enable @a aegis_theme
function echoes:player/aegis/_main

function echoes:player/healing_items

function echoes:player/xp_level/_main

function echoes:player/elytra_scaling/_main
execute as @a[scores={boost_visual_effects=0..}] run function echoes:player/elytra_scaling/boost_visuals
clear @a[scores={OnGround=1}] firework_rocket[custom_data~{elytra_boost:true}]
clear @a[scores={FallFlying=0}] firework_rocket[custom_data~{elytra_boost:true}]

execute as @a[scores={SoftRestOrRespawn=1}] run function echoes:player/grant_recipes

function echoes:player/aegis/display/_main

effect give @a[scores={used_glow_berries=1..}] glowing 10 0 true
scoreboard players set @a used_glow_berries 0

# sleeping stuff
execute as @a[scores={TimeSinceRest=0}] run function echoes:player/sleeping
execute as @a[scores={TimeSinceRest=1}] run function echoes:player/sleeping_awaken
execute if entity @a[scores={TimeSinceDeath=1..}] if entity @a[scores={DayTime=12010..23991}] unless entity @a[scores={TimeSinceRest=1..}] unless entity @a[scores={SleepingTime=..99}] run function echoes:player/skip_night
    # this might fix the thunderstorm thing? this just means that you won't be able to skip the night if it's thundering and NOT nighttime.

execute as @r[scores={DayTime=0}] run scoreboard players add $day value 1
execute as @a[scores={DayTime=23000,Dimension=1}] run function echoes:player/dawn
execute as @a[scores={DayTime=13000,Dimension=1}] run function echoes:player/dusk
execute as @r[scores={DayTime=6000}] run function echoes:player/align_days

execute as @r[scores={DayTime=6000,Dimension=1}] run function echoes:player/advance_time_false
execute as @r[scores={DayTime=13000,Dimension=1}] run function echoes:player/advance_time_false
execute as @r[scores={DayTime=18000,Dimension=1}] run function echoes:player/advance_time_false
execute as @r[scores={DayTime=23000,Dimension=1}] run function echoes:player/advance_time_false

execute as @r[scores={DayTime=5999}] run function echoes:player/align_days

execute unless score $day value matches 1.. run scoreboard players set $day value 1

execute as @a run function echoes:player/renown

scoreboard players set @a[tag=InCombat,scores={SprintTime=0,StrafeTime=0}] smoothSprinting 0
scoreboard players set @a[tag=!InCombat,scores={SprintTime=0,StrafeTime=0}] smoothSprinting 1
execute as @a run function echoes:stats/feats

function echoes:player/talisman

# function echoes:player/movement/glide