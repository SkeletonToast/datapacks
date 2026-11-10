$scoreboard players operation @s scale_modifier = @s $(score)
function math:round/down/int {score:scale_modifier,round:2}
function parse:decimal {score:scale_modifier,function:"echoes:stats/scale_attribute/max_health",scale:0.001}
function parse:decimal {score:scale_modifier,function:"echoes:stats/scale_attribute/step_height",scale:0.001}
function parse:decimal {score:scale_modifier,function:"echoes:stats/scale_attribute/interaction_range",scale:0.001}
function parse:decimal {score:scale_modifier,function:"echoes:stats/scale_attribute/jump_strength",scale:0.0001}
execute if score @s scale_modifier matches ..-1 run function parse:decimal \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/gravity",scale:0.0001}
execute if score @s scale_modifier matches ..-1 run function parse:decimal \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/fall_damage_multiplier",scale:0.001}
execute if score @s scale_modifier matches 1.. run function parse:score \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/fall_damage_multiplier",scale:-0.001}

# keep this at the end of the file so that it doesn't mess up any other calculations
scoreboard players operation @s scale_modifier *= #const.3 value
scoreboard players operation @s scale_modifier /= #const.5 value
    # used to make the falloff slightly more generous, like maybe aegis loss below 0.4 instead of below 0.6 or 0.7

# this is just here because it's convenient, the aegis calc continues after
execute if score @s scale_modifier matches 1.. run function parse:decimal \
    {score:scale_modifier,function:"echoes:stats/scale_attribute/movement_speed",scale:0.001}

function math:divide/int {score:scale_modifier,div:100}

scoreboard players operation @s aegis_amplifier_max += @s scale_modifier