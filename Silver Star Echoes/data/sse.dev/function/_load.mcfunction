function sse.dev:dependencies

function gamerule:custom_load {namespace:sse,gamerule:time_dilation}
function gamerule:custom_load {namespace:sse,gamerule:smooth_sprinting}
function gamerule:custom_load {namespace:sse,gamerule:variant_monsters}
function gamerule:custom_load {namespace:sse,gamerule:creative_encumbrance}
function gamerule:custom_load {namespace:sse,gamerule:combat_jump_scaling}
function gamerule:custom_load {namespace:sse,gamerule:ambient_particles}
function gamerule:custom_load {namespace:sse,gamerule:hungry_damage_reduction}
function gamerule:custom_load {namespace:sse,gamerule:elytra_boosting}

scoreboard objectives add sse.settings.aegis_self_visibility trigger
scoreboard objectives add sse.settings.aegis_visibility trigger
scoreboard objectives add sse.settings.attack_buff_visibility trigger
scoreboard objectives add sse.settings.tact_camera_distance trigger

scoreboard objectives add checkStats trigger

execute unless data storage sse:gamerule time_dilation run data modify storage sse:gamerule time_dilation set value 1
execute unless data storage sse:gamerule smooth_sprinting run data modify storage sse:gamerule smooth_sprinting set value 1
execute unless data storage sse:gamerule variant_monsters run data modify storage sse:gamerule variant_monsters set value 1
execute unless data storage sse:gamerule creative_encumbrance run data modify storage sse:gamerule creative_encumbrance set value 0
execute unless data storage sse:gamerule combat_jump_scaling run data modify storage sse:gamerule combat_jump_scaling set value 0
execute unless data storage sse:gamerule ambient_particles run data modify storage sse:gamerule ambient_particles set value 1
execute unless data storage sse:gamerule hungry_damage_reduction run data modify storage sse:gamerule hungry_damage_reduction set value 1

scoreboard objectives add aegis_display_level dummy