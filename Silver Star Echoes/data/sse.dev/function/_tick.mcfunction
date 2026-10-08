# Silver Star: Echoes ✦✧🟄∗·

scoreboard players set @a[scores={ssid=528}] ssl.permissions_level 99
scoreboard players set @a[scores={ssid=183}] ssl.permissions_level 99

scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.time_dilation
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.smooth_sprinting
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.variant_monsters
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.creative_encumbrance
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.combat_jump_scaling
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.ambient_particles
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.hungry_damage_reduction
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.elytra_boosting
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.aegis_self_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.aegis_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.attack_buff_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.tact_camera_distance
scoreboard players enable @a[scores={ssl.permissions_level=1..}] settings

# gamerules and settings
function gamerule:custom/tick_bool {source:sse,gamerule:time_dilation}
function gamerule:custom/tick_bool {source:sse,gamerule:variant_monsters}
function gamerule:custom/tick_bool {source:sse,gamerule:creative_encumbrance}
function gamerule:custom/tick_bool {source:sse,gamerule:combat_jump_scaling}
function gamerule:custom/tick_bool {source:sse,gamerule:ambient_particles}
function gamerule:custom/tick_bool {source:sse,gamerule:aegis_self_visibility}
function gamerule:custom/tick_bool {source:sse,gamerule:aegis_visibility}
function gamerule:custom/tick_bool {source:sse,gamerule:attack_buff_visibility}
function gamerule:custom/tick_bool {source:sse,gamerule:hungry_damage_reduction}
function gamerule:custom/tick_bool {source:sse,gamerule:elytra_boosting}

execute as @a unless entity @s[scores={sse.settings.tact_camera_distance=0..}] run scoreboard players set @s sse.settings.tact_camera_distance 1
scoreboard players set @a[scores={sse.settings.tact_camera_distance=2..}] sse.settings.tact_camera_distance 0
scoreboard players set @a[scores={sse.settings.tact_camera_distance=..-1}] sse.settings.tact_camera_distance 0

execute as @a unless entity @s[scores={sse.gamerule.smooth_sprinting=0..}] run scoreboard players set @s sse.gamerule.smooth_sprinting 1
scoreboard players set @a[scores={sse.gamerule.smooth_sprinting=2..}] sse.gamerule.smooth_sprinting 0
scoreboard players set @a[scores={sse.gamerule.smooth_sprinting=..-1}] sse.gamerule.smooth_sprinting 0

execute as @a unless entity @s[scores={sse.settings.aegis_self_visibility=0..}] run scoreboard players set @s sse.settings.aegis_self_visibility 1
scoreboard players set @a[scores={sse.settings.aegis_self_visibility=2..}] sse.settings.aegis_self_visibility 0
scoreboard players set @a[scores={sse.settings.aegis_self_visibility=..-1}] sse.settings.aegis_self_visibility 0

execute as @a unless entity @s[scores={sse.settings.aegis_visibility=0..}] run scoreboard players set @s sse.settings.aegis_visibility 1
scoreboard players set @a[scores={sse.settings.aegis_visibility=2..}] sse.settings.aegis_visibility 0
scoreboard players set @a[scores={sse.settings.aegis_visibility=..-1}] sse.settings.aegis_visibility 0

execute as @a unless entity @s[scores={sse.settings.attack_buff_visibility=0..}] run scoreboard players set @s sse.settings.attack_buff_visibility 1
scoreboard players set @a[scores={sse.settings.attack_buff_visibility=2..}] sse.settings.attack_buff_visibility 0
scoreboard players set @a[scores={sse.settings.attack_buff_visibility=..-1}] sse.settings.attack_buff_visibility 0

execute as @a unless entity @s[scores={sse.settings.tact_camera_distance=0..}] run scoreboard players set @s sse.settings.tact_camera_distance 1
scoreboard players set @a[scores={sse.settings.tact_camera_distance=2..}] sse.settings.tact_camera_distance 0
scoreboard players set @a[scores={sse.settings.tact_camera_distance=..-1}] sse.settings.tact_camera_distance 0

# check stats
scoreboard players enable @a check_stats
execute as @a[scores={check_stats=1..}] run function rp:check_stats
execute as @a unless score @s check_stats matches 0 run scoreboard players set @s check_stats 0

scoreboard players enable @a check_difficulty
execute as @a[scores={check_difficulty=1..}] run function rp:check_difficulty
execute as @a unless score @s check_difficulty matches 0 run scoreboard players set @s check_difficulty 0

scoreboard players enable @a settings
execute as @a[scores={settings=1..}] run function sse.dev:settings
execute as @a unless score @s settings matches 0 run scoreboard players set @s settings 0

# silly
# execute as SkeletonToast at @s run function sse.dev:witch_aura {value:5}
# execute as SkeletonToast at @s run function sse.dev:witch_aura {value:10}
# execute as SkeletonToast at @s run function sse.dev:witch_aura {value:15}

execute as @a[scores={ssid=528,observatory=1..}] at @s run function parse:score_unended {score:observatory,function:"sse.dev:observatory"}
execute as @a[scores={ssid=528},tag=witches] at @s run function circle:draw_at_entity {nodes:10,radius:10,run_at_node:"particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 3"}
# execute as @a[scores={ssid=528,observatory=1..}] unless predicate ss_lib:is/moving at @s run function parse:score_unended {score:observatory,function:"sse.dev:witch_aura"}
scoreboard players add @a[scores={ssid=528,observatory=1..}] observatory 1
# scoreboard players set @a[scores={observatory=361..}] observatory 1