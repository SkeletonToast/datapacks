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
scoreboard players enable @a[scores={ssl.permissions_level=1..}] aegis_self_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] aegis_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] attack_buff_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] tact_camera_distance

# gamerules and settings
function gamerule:custom_tick_bool {namespace:sse,gamerule:time_dilation}
function gamerule:custom_tick_bool {namespace:sse,gamerule:smooth_sprinting}
function gamerule:custom_tick_bool {namespace:sse,gamerule:variant_monsters}
function gamerule:custom_tick_bool {namespace:sse,gamerule:creative_encumbrance}
function gamerule:custom_tick_bool {namespace:sse,gamerule:combat_jump_scaling}
function gamerule:custom_tick_bool {namespace:sse,gamerule:ambient_particles}
function gamerule:custom_tick_bool {namespace:sse,gamerule:aegis_self_visibility}
function gamerule:custom_tick_bool {namespace:sse,gamerule:aegis_visibility}
function gamerule:custom_tick_bool {namespace:sse,gamerule:attack_buff_visibility}
function gamerule:custom_tick_bool {namespace:sse,gamerule:hungry_damage_reduction}
function gamerule:custom_tick_bool {namespace:sse,gamerule:elytra_boosting}
function gamerule:custom_tick_bool {namespace:sse,gamerule:tact_camera_distance}

execute as @a unless entity @s[scores={aegis_self_visibility=0..}] run scoreboard players set @s aegis_self_visibility 1
scoreboard players set @a[scores={aegis_self_visibility=2..}] aegis_self_visibility 0
scoreboard players set @a[scores={aegis_self_visibility=..-1}] aegis_self_visibility 0

execute as @a unless entity @s[scores={aegis_visibility=0..}] run scoreboard players set @s aegis_visibility 1
scoreboard players set @a[scores={aegis_visibility=2..}] aegis_visibility 0
scoreboard players set @a[scores={aegis_visibility=..-1}] aegis_visibility 0

execute as @a unless entity @s[scores={attack_buff_visibility=0..}] run scoreboard players set @s attack_buff_visibility 1
scoreboard players set @a[scores={attack_buff_visibility=2..}] attack_buff_visibility 0
scoreboard players set @a[scores={attack_buff_visibility=..-1}] attack_buff_visibility 0

execute as @a unless entity @s[scores={tact_camera_distance=0..}] run scoreboard players set @s tact_camera_distance 1
scoreboard players set @a[scores={tact_camera_distance=2..}] tact_camera_distance 0
scoreboard players set @a[scores={tact_camera_distance=..-1}] tact_camera_distance 0

# check stats
scoreboard players enable @a check_stats
execute as @a[scores={check_stats=1..}] run function rp:check_stats
scoreboard players set @a[scores={check_stats=1..}] check_stats 0
scoreboard players set @a[scores={check_stats=..-1}] check_stats 0