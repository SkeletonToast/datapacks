scoreboard players set @a[scores={ssid=528}] ssl.permissions_level 99
scoreboard players set @a[scores={ssid=183}] ssl.permissions_level 99

scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.time_dilation
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.smooth_sprinting
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.variant_monsters
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.creative_encumbrance
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.combat_jump_scaling
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.time_dilation
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.hungry_damage_reduction
scoreboard players enable @a[scores={ssl.permissions_level=4..}] sse.gamerule.elytra_boosting
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.aegis_self_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.aegis_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.attack_buff_visibility
scoreboard players enable @a[scores={ssl.permissions_level=1..}] sse.settings.tact_camera_distance

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
scoreboard players enable @a checkStats
execute as @a[scores={checkStats=1..}] run function rp:check_stats
scoreboard players set @a[scores={checkStats=1..}] checkStats 0
scoreboard players set @a[scores={checkStats=..-1}] checkStats 0