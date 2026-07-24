$scoreboard players operation @s scale_modifier = @s $(score)
function parse:score {"score":"scale_modifier","function":"echoes:stats/scale_attribute/max_health","prepend":"","append":".","prepend_position":0,"append_position":-3}
    # i don't love that this rounds down to odd numbers, but i don't think it reeeeeally matters because most of this is never going to apply to a real player
function parse:score {"score":"scale_modifier","function":"echoes:stats/scale_attribute/step_height","prepend":"","append":".","prepend_position":0,"append_position":-3}
function parse:score {"score":"scale_modifier","function":"echoes:stats/scale_attribute/jump_strength","prepend":"","append":".","prepend_position":0,"append_position":-4}
function parse:score {"score":"scale_modifier","function":"echoes:stats/scale_attribute/interaction_range","prepend":"","append":".","prepend_position":0,"append_position":-3}
execute if score @s scale_modifier matches ..-1 run function parse:score \
    {"score":"scale_modifier","function":"echoes:stats/scale_attribute/gravity","prepend":"","append":".","prepend_position":0,"append_position":-4}
execute if score @s scale_modifier matches ..-1 run function parse:score \
    {"score":"scale_modifier","function":"echoes:stats/scale_attribute/fall_damage_multiplier","prepend":"","append":".","prepend_position":0,"append_position":-3}
execute if score @s scale_modifier matches 1.. run function parse:score \
    {"score":"scale_modifier","function":"echoes:stats/scale_attribute/fall_damage_multiplier","prepend":"-","append":".","prepend_position":0,"append_position":-3}

# keep this at the end of the file so that it doesn't mess up any other calculations
scoreboard players operation @s scale_modifier *= @s 3
scoreboard players operation @s scale_modifier /= @s 5
    # used to make the falloff slightly more generous, like maybe aegis loss below 0.4 instead of below 0.6 or 0.7

# this is just here because it's convenient, the aegis calc continues after
execute if score @s scale_modifier matches 1.. run function parse:score \
    {"score":"scale_modifier","function":"echoes:stats/scale_attribute/movement_speed","prepend":"","append":".","prepend_position":0,"append_position":-3}

scoreboard players operation @s scale_modifier /= @s 10
scoreboard players operation @s scale_modifier /= @s 10

scoreboard players operation @s aegis_amplifier_max += @s scale_modifier