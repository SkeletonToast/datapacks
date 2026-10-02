function echoes:player/oaths/_tick

function echoes:player/temperature/_main

function echoes:player/encumbrance/_main

function echoes:player/healing_items

function echoes:player/xp_level/_main

function echoes:player/elytra_scaling/_main
execute as @a[scores={boost_visual_effects=0..}] run function echoes:player/elytra_scaling/boost_visuals
# clear @a[scores={OnGround=1}] firework_rocket[custom_data~{elytra_boost:true}]
# clear @a[scores={FallFlying=0}] firework_rocket[custom_data~{elytra_boost:true}]

execute as @a[scores={SoftRestOrRespawn=1}] run function echoes:player/grant_recipes

function echoes:player/combat/techniques

function echoes:player/aegis/display/_main

effect give @a[scores={used_glow_berries=1..}] glowing 10 0 true
scoreboard players set @a used_glow_berries 0

# armor notice
execute as @a[scores={Armor=30..},tag=!sse.30_armor] run tellraw @s [{"text":"You have reached the maximum amount of armor.","color":"gray","italic":true}]
tag @a[scores={Armor=30..}] add sse.30_armor
tag @a[scores={Armor=..29}] remove sse.30_armor
    # armor doesn't need to be fetched here because it's just set to a default score

# sleeping stuff
execute as @a[scores={TimeSinceRest=0}] run function echoes:player/sleeping
execute as @a[scores={TimeSinceRest=1}] run function echoes:player/sleeping_awaken
execute if entity @a[scores={TimeSinceDeath=1..}] if score $day_time value matches 12010..23991 unless entity @a[scores={TimeSinceRest=1..}] unless entity @a[scores={SleepingTime=..99}] run function echoes:player/skip_night

execute as @a run function echoes:player/renown

scoreboard players set @a[tag=InCombat,scores={SprintTime=0,StrafeTime=0}] sse.gamerule.smooth_sprinting 0
scoreboard players set @a[tag=!InCombat,scores={SprintTime=0,StrafeTime=0}] sse.gamerule.smooth_sprinting 1
execute as @a run function echoes:stats/feats

function echoes:player/talisman

# function echoes:player/movement/glide