# function gamerule:custom/load {source:sse,gamerule:test_range}

function gamerule:custom/load {source:sse,gamerule:time_dilation,default:true}
function gamerule:custom/load {source:sse,gamerule:variant_monsters,default:true}
function gamerule:custom/load {source:sse,gamerule:creative_encumbrance,default:false}
function gamerule:custom/load {source:sse,gamerule:combat_jump_scaling,default:false}
function gamerule:custom/load {source:sse,gamerule:ambient_particles,default:true}
function gamerule:custom/load {source:sse,gamerule:hungry_damage_reduction,default:true}
function gamerule:custom/load {source:sse,gamerule:elytra_boosting,default:true}
function gamerule:custom/load {source:sse,gamerule:scale_attributes,default:true}
scoreboard objectives add sse.gamerule.smooth_sprinting trigger
scoreboard objectives add settings trigger
scoreboard objectives add sse.settings.aegis_self_visibility trigger
scoreboard objectives add sse.settings.aegis_visibility trigger
scoreboard objectives add sse.settings.attack_buff_visibility trigger
scoreboard objectives add sse.settings.tact_camera_distance trigger

scoreboard objectives add check_stats trigger
scoreboard objectives add check_difficulty trigger

scoreboard objectives add aegis_display_level dummy