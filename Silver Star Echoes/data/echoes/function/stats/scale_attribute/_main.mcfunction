$scoreboard players operation @s scale_modifier = @s $(score)
function math:even {score:scale_modifier,sign:"-"}
function parse:score_append {score:scale_modifier,function:"echoes:stats/scale_attribute/max_health",append:".",append_position:-3}
function parse:score_append {score:scale_modifier,function:"echoes:stats/scale_attribute/step_height",append:".",append_position:-3}
function parse:score_append {score:scale_modifier,function:"echoes:stats/scale_attribute/jump_strength",append:".",append_position:-4}
function parse:score_append {score:scale_modifier,function:"echoes:stats/scale_attribute/interaction_range",append:".",append_position:-3}
execute if score @s scale_modifier matches ..-1 run function parse:score_append \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/gravity",append:".",append_position:-4}
execute if score @s scale_modifier matches ..-1 run function parse:score_append \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/fall_damage_multiplier",append:".",append_position:-3}
execute if score @s scale_modifier matches 1.. run function parse:score \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/fall_damage_multiplier",prepend:"-",append:".",prepend_position:0,append_position:-3}

# keep this at the end of the file so that it doesn't mess up any other calculations
scoreboard players operation @s scale_modifier *= #const.3 value
scoreboard players operation @s scale_modifier /= #const.5 value
    # used to make the falloff slightly more generous, like maybe aegis loss below 0.4 instead of below 0.6 or 0.7

# this is just here because it's convenient, the aegis calc continues after
execute if score @s scale_modifier matches 1.. run function parse:score_append \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/movement_speed",append:".",append_position:-3}

function math:round {score:scale_modifier,round:100,reduce:true}

scoreboard players operation @s aegis_amplifier_max += @s scale_modifier